class CartsController < ApplicationController
  before_action :set_cart, only: %i[ show edit update destroy ]
  before_action :logged_in_user, only: [:index]

  # GET /carts or /carts.json
  def index
    @carts = Cart.all
  end

  # GET /carts/1 or /carts/1.json
  def show
  end

  # GET /carts/new
  def new
    @cart = Cart.new
  end

  # GET /carts/1/edit
  def edit
  end

  # POST /carts or /carts.json
  def create
    @cart = Cart.new(cart_params)

    if (!(session[:user_id]))
      session[:cart_item] = @cart
      redirect_to "/login" and return
    else
      respond_to do |format|
        if @cart.save
          format.html { redirect_to root_path, notice: "Cart was successfully created." }
          format.json { render :show, status: :created, location: @cart }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @cart.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /carts/1 or /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: "Cart was successfully updated." }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1 or /carts/1.json
  def destroy
    @cart.destroy
    respond_to do |format|
      format.html { redirect_to carts_url, notice: "Cart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def checkout
     @user = User.find_by(:id => session[:user_id])
    @cartItems = Cart.all.where("user_id = " + @user.id.to_s)
    @cartItems.each do |c|
      c.destroy
    end
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_params
      params.require(:cart).permit(:size, :color, :quantity, :product_id, :user_id)
    end
end

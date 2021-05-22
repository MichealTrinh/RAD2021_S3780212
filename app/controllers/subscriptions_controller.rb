class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: %i[ show edit update destroy ]

  # GET /subscriptions or /subscriptions.json
  def index
    @subscriptions = Subscription.all
  end

  # GET /subscriptions/1 or /subscriptions/1.json
  def show
  end

  # GET /subscriptions/new
  def new
    @subscription = Subscription.new
  end

  # GET /subscriptions/1/edit
  def edit
  end

  # POST /subscriptions or /subscriptions.json
  def create
    @subscription = Subscription.new(subscription_params)

    respond_to do |format|
      if @subscription.save
        format.html { redirect_to root_url, notice: "Subscription was successfully created." }
        format.json { render :show, status: :created, location: @subscription }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subscriptions/1 or /subscriptions/1.json
  def update
    respond_to do |format|
      if @subscription.update(subscription_params)
        format.html { redirect_to @subscription, notice: "Subscription was successfully updated." }
        format.json { render :show, status: :ok, location: @subscription }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscriptions/1 or /subscriptions/1.json
  def destroy
    @subscription.destroy
    respond_to do |format|
      format.html { redirect_to subscriptions_url, notice: "Subscription was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def checkExists
    if Subscription.exists?(email: subscription_params["email"])
      Subscription.destroy(Subscription.find_by(:email => subscription_params["email"]).id)
    else
      Subscription.create(subscription_params)
    end
  end

  def subscribeUser
    @current_user = current_user
    if !Subscription.exists?(user_id: @current_user.id)
      Subscription.create(email: @current_user.email, user_id: @current_user.id )
      redirect_to root_url
    else
      Subscription.destroy(Subscription.find_by(:user_id => @current_user.id).id)
      redirect_to root_url
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscription
      @subscription = Subscription.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subscription_params
      params.require(:subscription).permit(:email, :user_id)
    end
end

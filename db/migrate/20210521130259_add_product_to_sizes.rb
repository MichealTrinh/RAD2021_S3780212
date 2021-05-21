class AddProductToSizes < ActiveRecord::Migration[6.1]
  def change
    add_reference :sizes, :product, null: false, foreign_key: true
  end
end

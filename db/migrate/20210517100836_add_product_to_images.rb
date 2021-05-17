class AddProductToImages < ActiveRecord::Migration[6.1]
  def change
    add_reference :images, :product, null: false, foreign_key: true
  end
end

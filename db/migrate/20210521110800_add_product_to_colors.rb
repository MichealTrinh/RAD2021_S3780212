class AddProductToColors < ActiveRecord::Migration[6.1]
  def change
    add_reference :colors, :product, null: false, foreign_key: true
  end
end

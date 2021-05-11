class AddCollectionToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :collection, :string
  end
end

class AddPopularStatsToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :timesViewed, :integer, default: 0
    add_column :products, :timesSaved, :integer, default: 0
    add_column :products, :timesPurchased, :integer, default: 0
  end
end

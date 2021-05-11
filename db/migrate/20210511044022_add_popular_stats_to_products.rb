class AddPopularStatsToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :timesViewed, :integer
    add_column :products, :timesSaved, :integer
    add_column :products, :timesPurchased, :integer
  end
end

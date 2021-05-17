# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Collection.create(:name => "men")
Collection.create(:name => "women")
Collection.create(:name => "kids")
Collection.create(:name => "new-ins")

Product.create(:name => "Winter Vibes", :description => "Cold & Brilliant start", :price => 2999, :timesViewed => 0, :timesSaved => 0, :timesPurchased => 0)
Product.create(:name => "Black Knit Sweatshirt", :description => "A black sweatshirt", :price => 12999, :timesViewed => 0, :timesSaved => 1, :timesPurchased => 0)
Product.create(:name => "Skull's Sweater", :description => "A sweater from a huy named Skull", :price => 12999, :timesViewed => 0, :timesSaved => 0, :timesPurchased => 1)
Product.create(:name => "Swag Sweater", :description => "A very swag sweater", :price => 420, :timesViewed => 0, :timesSaved => 1, :timesPurchased => 1)

Product.find(1).collections << Collection.find(2)
# Product.find(1).collection << Collection.find(4)
Product.find(2).collections << Collection.find(1)
# Product.find(2).collection << Collection.find(4)
Product.find(3).collections << Collection.find(3)
# Product.find(3).collection << Collection.find(4)
Product.find(4).collections << Collection.find(3)
# Product.find(4).collection << Collection.find(4)

# Product.create(:name => "Winter Vibes", :description => "Cold & Brilliant start", :price => 2999, :timesViewed => 0, :timesSaved => 0, :timesPurchased => 0, :collection_id => 2)
# Product.create(:name => "Black Knit Sweatshirt", :description => "A black sweatshirt", :price => 12999, :timesViewed => 0, :timesSaved => 1, :timesPurchased => 0, :collection_id => 1)
# Product.create(:name => "Skull's Sweater", :description => "A sweater from a huy named Skull", :price => 12999, :timesViewed => 0, :timesSaved => 0, :timesPurchased => 1, :collection_id => 4)
# Product.create(:name => "Swag Sweater", :description => "A very swag sweater", :price => 420, :timesViewed => 0, :timesSaved => 1, :timesPurchased => 1, :collection_id => 3)
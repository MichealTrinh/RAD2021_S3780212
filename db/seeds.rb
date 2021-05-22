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
Color.create(:white => true, :gray => true, :black => true, :product_id => 1)
Size.create(:s => true, :m => true, :l => true, :product_id => 1)

Product.create(:name => "Black Knit Sweatshirt", :description => "A black sweatshirt", :price => 12999, :timesViewed => 0, :timesSaved => 1, :timesPurchased => 0)
Color.create(:black => true, :product_id => 2)
Size.create(:s => true, :m => true, :l => true, :xl => true, :product_id => 2)

Product.create(:name => "Skull's Sweater", :description => "A sweater from a huy named Skull", :price => 12999, :timesViewed => 0, :timesSaved => 0, :timesPurchased => 1)
Color.create(:black => true, :red => true, :product_id => 3)
Size.create(:m => true, :l => true, :xl => true, :product_id => 3)

Product.create(:name => "Swag Sweater", :description => "A very swag sweater", :price => 420, :timesViewed => 0, :timesSaved => 1, :timesPurchased => 1)
Color.create(:white => true, :gray => true, :purple => true, :blue => true, :green => true, :brown => true, :product_id => 4)
Size.create(:s => true, :m => true, :l => true, :xl => true, :xxl => true, :product_id => 4)

Product.find(1).collections << Collection.find(2)
# Product.find(1).collection << Collection.find(4)
Product.find(2).collections << Collection.find(1)
# Product.find(2).collection << Collection.find(4)
Product.find(3).collections << Collection.find(3)
# Product.find(3).collection << Collection.find(4)
Product.find(4).collections << Collection.find(3)
# Product.find(4).collection << Collection.find(4)

User.create(:username => "RAD", :password => "Rails2021", :password_confirmation => "Rails2021" , :email => "rad2021rmit@gmail.com")

Image.create(:name => "winter_vibes_1", :alt => "A winter jacket.", :product_id => 1)

Image.create(:name => "black_knit_sweater_1", :alt => "A black knitted sweater.", :product_id => 2)
Image.create(:name => "black_knit_sweater_2", :alt => "A knitted sweater made of black threads.", :product_id => 2)

Image.create(:name => "skulls_sweater_1", :alt => "A black shirt with a skull.", :product_id => 3)

Image.create(:name => "swag_sweater_1", :alt => "A swag sweater.", :product_id => 4)
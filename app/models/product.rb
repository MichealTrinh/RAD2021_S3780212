class Product < ApplicationRecord
  has_and_belongs_to_many :collections, :dependent => :destroy
  has_many :images, :dependent => :destroy
  has_many :carts, :dependent => :destroy
  after_create :init

  def init
    self.collections << Collection.find(4)
  end
end

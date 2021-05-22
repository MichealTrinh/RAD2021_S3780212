class Product < ApplicationRecord
  has_and_belongs_to_many :collections, :dependent => :destroy
  has_many :images, :dependent => :destroy
  has_many :carts, :dependent => :destroy
  after_create :init
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 255 }
  validates :price, presence: true, numericality: { greater_than: -1 }
  validates :timesSaved, presence: true, numericality: { greater_than: -1 }
  validates :timesPurchased, presence: true, numericality: { greater_than: -1 }

  def init
    self.collections << Collection.find(4)
  end
end

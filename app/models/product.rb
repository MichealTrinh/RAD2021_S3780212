class Product < ApplicationRecord
  has_and_belongs_to_many :collection, :dependent => :destroy
  after_create :init

  def init
    self.collection << Collection.find(4)
  end
end

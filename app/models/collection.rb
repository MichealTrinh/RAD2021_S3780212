class Collection < ApplicationRecord
  has_and_belongs_to_many :products, :dependent => :destroy
  validates :name, presence: true, length: { maximum: 25 }
end

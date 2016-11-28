class Item < ActiveRecord::Base
  acts_as_sellable
  belongs_to :user
  belongs_to :subcategory
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
end

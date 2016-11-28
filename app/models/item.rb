class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :subcategory
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  has_many :order_items
  default_scope { where(active: true) }
end

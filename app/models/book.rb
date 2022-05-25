class Book < ApplicationRecord
  has_many :book_store_inventories, dependent: :destroy
  has_many :book_stores, through: :book_store_inventories

  validates :name, :stock, presence: true
end

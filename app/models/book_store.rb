class BookStore < ApplicationRecord
  has_many :book_store_inventories, dependent: :destroy
  has_many :books, through: :book_store_inventories

  validates :name, presence: true
end

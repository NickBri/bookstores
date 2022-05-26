class Book < ApplicationRecord
  has_many :book_store_inventories, dependent: :destroy
  has_many :book_stores, through: :book_store_inventories

  validates :name, presence: true
  validates :stock, presence: true, numericality: { other_than: 0}

  enum status: [ :in_stock, :out_of_stock ]
end

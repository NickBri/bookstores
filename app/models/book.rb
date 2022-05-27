class Book < ApplicationRecord
  has_many :book_store_inventories, dependent: :destroy
  has_many :book_stores, through: :book_store_inventories

  validates :name, presence: true
  validates :stock, presence: true, numericality: { greater_than_or_equal_to: 0}

  enum status: [ :in_stock, :out_of_stock ]


  def self.update_book_statuses
    Book.all.each do |book|
      book.update!(status: "out_of_stock") if book.stock == 0
    end
  end
end

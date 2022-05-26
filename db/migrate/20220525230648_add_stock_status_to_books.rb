class AddStockStatusToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :status, :integer
    add_index :books, :name
    add_index :book_stores, :name
  end
end

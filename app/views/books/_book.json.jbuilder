json.extract! book, :id, :name, :stock, :created_at, :updated_at
json.url book_url(book, format: :json)

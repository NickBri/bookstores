namespace :update_book_statuses do
  desc "Rake task to update book statuses"
  task :update_status => [ :environment ] do
    puts "Updating statuses…"
    Book.update_book_statuses()
    puts "#{Time.now} — Success!"
  end
end

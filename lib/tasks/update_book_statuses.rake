namespace :update_book_statuses do
  desc “Rake task to update book statuses”
  task :fetch => :environment do
    puts “Updating statuses…”
    Article.update_book_statuses()
    puts “#{Time.now} — Success!”
  end
end

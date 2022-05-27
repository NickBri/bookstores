# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

set :environment, "development"
set :output, "log/cron.log"

every 1.minute do 
  rake 'update_book_statuses:update_status'
end

# Learn more: http://github.com/javan/whenever

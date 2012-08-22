# ------------------------------------------------------------------------------
require 'bundler/setup'
Bundler.require(:default, :console, ENV.fetch("RACK_ENV", :development))
# ------------------------------------------------------------------------------
include Term::ANSIColor
require "./config/boot"
# ------------------------------------------------------------------------------
namespace :db do
  desc "Bootstrap the database."
  task :environment do
  end

  desc "Migrate the database"
  task(:migrate => :environment) do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    ActiveRecord::Migration.verbose = true
    ActiveRecord::Migrator.migrate("db/migrate")
  end

  desc "Flush the database"
  task :reset do
    `redis-cli -h #{Settings.redis.host} -p #{Settings.redis.port} flushall`
    ActiveRecord::Base.connection.execute("TRUNCATE TABLE `teams`")
    puts "Redis and MySQL reset."
  end
end

desc "Start thin"
task :start do
  `thin -C config/thin.yml start`
end

desc "Stop thin"
task :stop do
  `thin -C config/thin.yml stop`
end

desc "Restart thin"
task :restart do
  `thin -C config/thin.yml restart`
end
# ------------------------------------------------------------------------------

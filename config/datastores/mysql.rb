# ------------------------------------------------------------------------------
ActiveRecord::Base.establish_connection(
  :adapter  => Settings.db.type,
  :host     => Settings.db.host,
  :database => Settings.db.name,
  :username => Settings.db.user,
  :password => Settings.db.pass,
  :pool     => Settings.db.pool
)
# ------------------------------------------------------------------------------
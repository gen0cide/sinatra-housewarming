# ------------------------------------------------------------------------------
Redis.current = Redis.new(
  :host => Settings.redis.host, 
  :port => Settings.redis.port
)
# ------------------------------------------------------------------------------
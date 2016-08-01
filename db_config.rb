require 'active_record'

options = {
  adapter: 'postgresql',
  database: 'vibes',
}

ActiveRecord::Base.establish_connection(options)

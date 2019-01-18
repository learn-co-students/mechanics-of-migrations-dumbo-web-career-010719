require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'


require 'bundler/setup'
Bundler.require


# put the code to connect to the database here




ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
)

# sql = <<-SQL
#   CREATE TABLE IF NOT EXISTS artists (
#   id INTEGER PRIMARY KEY,
#   name TEXT,
#   genre TEXT,
#   age INTEGER,
#   hometown TEXT
#   )
# SQL

## If database is not created,
# the ActiveRecord::Base.connection.execute()
# will create the database sql file itself
# ActiveRecord::Base.connection.execute(sql)
##
# We don't need the code from above with the
# ActiveRecord::Base.connection.execute(sql)
# which passes in sql because with Active Record
# we can already do the work of creating and establishing
# a connection from the class to the database

# otherwise if you used this line and made the table
# then you would only need to make migrations to alter the table
# you can not create two tables of the same name.
# it will not allow you to execute the migration
require_relative "../artist.rb"

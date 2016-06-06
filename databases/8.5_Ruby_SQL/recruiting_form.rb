# Create a program that lets junior tennis players input and keep track of recruiting information for college coaches


# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("player_profiles.db")
db.results_as_hash = true
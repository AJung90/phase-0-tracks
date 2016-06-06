# Create a program that lets junior tennis players input and keep track of recruiting information for college coaches


# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("player_profiles.db")
db.results_as_hash = true

# create string delimiter for players
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS players(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		age INT,
		hometown VARCHAR(255),
		college1 VARCHAR(255),
		college2 VARCHAR(255),
		college3 VARCHAR(255)
	)
SQL

# create a players table if it doesn't already exist
db.execute(create_table_cmd)
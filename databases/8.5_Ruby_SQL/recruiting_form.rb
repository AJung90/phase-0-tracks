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

# allow for user input / user interface
grad_year = ""
until grad_year == "done"

puts "Welcome! Here we will assist you in your college search. Let's start by entering your year of graduation."
grad_year = gets.chomp

puts "Now let's get to the good stuff. After you have finished answering all questions, please type 'done'."

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What city are you from?"
hometown = gets.chomp

puts "What is your top choice for college?"
college1 = gets.chomp

puts "What is your next top choice?"
college2 = gets.chomp

puts "What is your 3rd choice?"
college3 = gets.chomp

# Add player input into players table
db.execute("INSERT INTO players (name, age, hometown, college1, college2, college3) VALUES (?, ?, ?, ?, ?, ?)", [name, age, hometown, college1, college2, college3])
players = db.execute("SELECT * FROM players")
p players 
end

# Will add more to this program this week. Did not have time to make it more intricate.
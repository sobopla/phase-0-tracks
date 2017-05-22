# Allow user to enter their mood, an activity and any food that is uncommon to their daily diet, 
# show trends in mood (? not sure how to do this)
# Show mood count per month, 
# show relation to food and mood
# ? place/location and mood
# show relation to activity and mood
#  ? user can enter activities to track
#  ? mood is a point system?
#  


# require gems
require 'sqlite3'
require 'date'

# create SQLite3 database
mood_database = SQLite3::Database.new( "mood.db" )
@db.results_as_hash = true

# CREATE TABLE FOR DATABASE:
# journal_table = <<-SQL
# CREATE TABLE IF NOT EXISTS moods (
#   id INTEGER PRIMARY KEY,   
#   month INT,
#   day INT,
#   year INT,
#   mood TEXT,
#   activity TEXT,
#   food TEXT
#  )
#  SQL
#  
#  @mood_database.execute(journal_table)

=begin # not sure if this will work

mood.db do |db|
  db.execute( "select * from table" ) do |row|
  p row
  end


=end

# allow user to enter their mood, an activity and any food that is uncommon to their daily diet, 
# show mood count per month, 
# show trends in mood (? not sure how to do this)
# show relation to food and mood
# ? place
# show relation to activity and mood
#  ? user can enter activities to track
#  ? mood is a point system?
#  


# require gems
require 'sqlite3'
require 'date'

# create SQLite3 database
db = SQLite3::Database.new("mood.db")
@db.results_as_hash = true

# CREATE TABLE FOR DATABASE:
# mood_journal_table = <<-SQL
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
#  @db.execute(mood_journal_table)
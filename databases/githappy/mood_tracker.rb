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
require 'faker'


# create SQLite3 database
mood_database = SQLite3::Database.new( "moods.db" )
mood_database.results_as_hash = true

# CREATE TABLE FOR DATABASE:
create_mood_table = <<-SQL
CREATE TABLE IF NOT EXISTS moods (
  id INTEGER PRIMARY KEY,   
  month INT,
  day INT,
  year INT,
  mood TEXT,
  activity VARCHAR(255),
  food TEXT
 )
 SQL
 
mood_database.execute(create_mood_table)

# add a test moods 
#moods = mood_database.execute("INSERT INTO moods (month, day, year, mood, activity, food) VALUES ( 4, 20, 2017, 'tranquil', 'rest', 'cherries') " )

# look into data type:
# moods = mood_database.execute("SELECT * FROM moods")
# puts moods.class
# p moods 


# create method for mood entry
def create_mood_entry( mood_database, month, day, year, mood, activity, food) #think about adding location for a 'you should move to _____ method'
  # WILL NEED TO BE UNCOMMENTED FOR THE REAL PROGRAM
  # date = Time.now
  # month = date.month
  # day = date.day
  # year = date.year
  mood_database.execute("INSERT INTO moods (month, day, year, mood, activity, food) VALUES (?, ?, ?, ?, ?, ?)", [month, day, year, mood, activity, food])
end 

#past = Faker::Date.backward(14)

10.times do #create a lot of mood entries using Faker::date / figure out how to set variable to faker date and get month/day/yr
  create_mood_entry(mood_database, Faker::Date.backward(90).month, Faker::Date.backward(90).day, Faker::Date.backward(90).year, "happy", "dancing", "wine")
end

create_mood_entry(mood_database, Faker::Date.backward(90).month, Faker::Date.backward(90).day, Faker::Date.backward(90).year, "happy", "singing", "cherries")
create_mood_entry(mood_database, Faker::Date.backward(90).month, Faker::Date.backward(90).day, Faker::Date.backward(90).year, "happy", "run", "chocolate")
create_mood_entry(mood_database, Faker::Date.backward(90).month, Faker::Date.backward(90).day, Faker::Date.backward(90).year, "sad", "run", "bread")
create_mood_entry(mood_database, Faker::Date.backward(90).month, Faker::Date.backward(90).day, Faker::Date.backward(90).year, "happy", "driving", "cookies")

# METHOD to return the foods associated with mood happy
# remove duplicates

def happy_foods(db)
        good_foods = db.execute("SELECT food FROM moods WHERE mood = 'happy'")
        p '------------------------------------!!!!!!!!!!!!!!!!!!!!'
        p good_foods
        p 'before map-- )00000000)0000000000000000000000000000000'
        good_foods.map! do |consumed|
          consumed['food']
        end
          good_foods.uniq!
          p 'AFTER UNIQ __________________________________'
          puts "You are happy when you consume: "
          good_foods.each do |i|
            puts  i #{i}"
          end
          # good_foods.uniq
          # puts "You are happy when you consume #{consumed['food']}" 
       # end  
    
end


happy_foods(mood_database)
# =begin # not sure if this will work

#   moods.db do |db|
#     db.execute( "select * from table" ) do |row|
#     p row
#     end

# =end

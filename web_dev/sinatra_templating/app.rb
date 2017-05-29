# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
# get '/' do
# #? WHY DOESN'T IT WORK WHEN THIS IS COMMENTED OUT

#   @students = db.execute("SELECT * FROM students")
#   p @students
#   p params
#   erb :home
# end

get '/students/new' do
  erb :new_student
end

get '/' do 
	@students = db.execute("SELECT * FROM students")
	p @students
	erb :index
end

# create new students via
# a form
post '/students' do
  db.execute("UPDATE students SET diet = ? WHERE name = ?", [params['diet'], params['name']])
  @students = db.execute("SELECT name FROM students WHERE diet = 'vegan'")
  redirect '/'
end

# add static resources
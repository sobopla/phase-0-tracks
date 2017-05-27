# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/' do 
	erb :index
end

# create new students via
# a form
post '/students' do
  db.execute("UPDATE students SET diet = ? WHERE name = ?", [params['diet'], params['name'])
  redirect '/'
end

# add static resources
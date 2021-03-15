require_relative "config/application"
require_relative "models/student"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @students = Student.all
  erb :index
end

get "/students/new" do
  erb :new
end

get "/students/:id" do
  std_id = params[:id]
  @student = Student.find(std_id)

  erb :show
end

post "/students" do
  # use the user's input to create a new student and save to the database
  name = params[:name]
  quote = params[:quote]
  student = Student.new(name: name, quote: quote)
  student.save

  redirect '/'
end

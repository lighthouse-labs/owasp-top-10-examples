get '/' do
  @users = User.all
  erb :index
end

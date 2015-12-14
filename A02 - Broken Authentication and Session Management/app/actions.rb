helpers do
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end

get '/' do
  erb :index
end

post '/login' do
  user = User.find_by(username: params[:username], password: params[:password])
  session[:user_id] = user.id if user
  redirect '/'
end

get '/logout' do
  session.clear
  redirect '/'
end

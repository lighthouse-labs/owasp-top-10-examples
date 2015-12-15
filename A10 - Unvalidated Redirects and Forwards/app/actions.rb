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
  redirect params[:redirect_to] || '/'
end

get '/logout' do
  session.clear
  redirect '/'
end

get '/must_be_logged_in' do
  if current_user
    'You have been authenticated if you can see this.'
  else
    redirect '/?redirect_to=/must_be_logged_in'
  end
end

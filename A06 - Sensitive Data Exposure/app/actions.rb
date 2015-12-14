get '/' do
  erb :index
end

get '/users' do
  User.all.to_json
end

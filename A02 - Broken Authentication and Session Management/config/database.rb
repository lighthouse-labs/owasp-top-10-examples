configure do
  set :database, {
    adapter: 'sqlite3',
    database: 'db/db.sqlite3'
  }
  require_relative '../app/models/user'
end

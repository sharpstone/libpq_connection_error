require "pg"
require "uri"
database_uri = URI.parse(ENV["DATABASE_URL"])
connection_parameters = {
  dbname: database_uri.path.sub(/^\//, ''),
  host: database_uri.host,
  user: database_uri.user,
  password: database_uri.password,
  connect_timeout: "15s",
}
conn = PG.connect(connection_parameters)
conn.exec("SELECT 'test'") do |result|
  puts "Succeeded"
end

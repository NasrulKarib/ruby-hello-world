require 'json'
require 'sinatra'

set :bind, '0.0.0.0'
set :port, 4567
set :public_folder, File.join(__dir__, 'static')

get '/api/hello' do
  content_type :json
  { message: 'Hello world from Ruby backend!' }.to_json
end

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
endjj
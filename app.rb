require 'bundler/setup'
Bundler.require

class App < Sinatra::Application
  get '/' do
    erb :index
  end

  get '/kubernetes' do
    erb :kubernetes
  end

  get '/docker' do
    erb :docker
  end
end

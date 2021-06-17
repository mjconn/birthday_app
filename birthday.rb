require 'sinatra'
require 'sinatra/reloader' if development?
require 'date'

class Birthday < Sinatra::Base

  enable :sessions

  get "/" do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect '/countdown'
  end

  get '/countdown' do
    @name = session[:name]
    @day = session[:day]
    @month =  session[:month]
    erb(:countdown)
  end
end

require 'rubygems'
require 'sinatra'
require 'erb'

get '/' do
  erb :index
end

get '/ftw' do
  @redname = params["redname"]
  @bluename = params["bluename"]
  @red = params["red"].to_i
  @blue = params["blue"].to_i
  do_win
  erb :ftw
end

def do_win
  case 
    when @red > @blue
      @winner = "RED"
      @winname = @redname
    when @red < @blue
      @winner = "BLUE"
      @winner = @bluename
    else
      @winner = "TIE"
  end
end
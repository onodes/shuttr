require 'rubygems'
require 'sinatra'
require 'open-uri'
require 'pp'
require 'mini_exiftool'


#helpers do
#  include Rack::Utils; alias_method :h; :escape_html
#end

#get '/style.css' do
#  content_type 'text/css', :charset => 'utf-8'
#  sass :style
#end


def func(url)
  
  pp url
  url = url[0]
  system('wget '+ url)
  pp File.split(url)[1]
  photo = MiniExiftool.new(File.split(url)[1])
  pp photo
  shutter = photo['shuttercount']
  pp shutter
  return shutter
end


get '/name/*' do
  "#{func(params[:splat])}"
end


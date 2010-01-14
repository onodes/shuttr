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



get '/name/*' do
  data = params[:splat]
 # p File.split(data)[1] 
end


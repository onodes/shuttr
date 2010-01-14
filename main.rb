require 'rubygems'
require 'exifr'
require 'open-uri'
require 'pp' 
require 'mini_exiftool'
require 'sinatra'
#url = ARGV[0].to_s.chomp

puts
puts

p url
p system('wget '+ url)

photo = MiniExiftool.new(File.split(url)[1])

shutter = photo['shuttercount']

p shutter


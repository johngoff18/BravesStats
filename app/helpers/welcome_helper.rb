module WelcomeHelper
  require 'nokogiri'
  require 'open-uri'
  
  doc = Nokogiri::HTML(open('https://www.baseball-reference.com/players/a/acunaro01.shtml'))
end

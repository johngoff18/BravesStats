class WelcomeController < ApplicationController
  def players
    require 'HTTParty'
    require 'Nokogiri'
    
    doc = HTTParty.get("https://www.baseball-reference.com/teams/ATL/2019.shtml")
    @parse_page ||= Nokogiri::HTML(doc)
  end
end

require 'HTTParty'
require 'Nokogiri'

class Scraper
  
    doc = HTTParty.get("https://www.baseball-reference.com/teams/ATL/2019.shtml")
    @parse_page ||= Nokogiri::HTML(doc)
  
    x=1;
    while x<9
      
    
  
  
  @parse_page.xpath('//*[@id="team_batting"]/tbody/tr['+x.to_s+']/td[2]/strong/a').each do |name|
     puts "Name: " + name.content
end

 @parse_page.xpath('//*[@id="team_batting"]/tbody/tr['+x.to_s+']/td[20]').each do |ops| puts "OPS: " + ops.content end

 @parse_page.xpath('//*[@id="team_batting"]/tbody/tr['+x.to_s+']/td[17]').each do |ba| puts "BA: " + ba.content end

 @parse_page.xpath('//*[@id="team_batting"]/tbody/tr['+x.to_s+']/td[11]').each do |hr| puts "HR: " + hr.content end

 @parse_page.xpath('//*[@id="team_batting"]/tbody/tr['+x.to_s+']/td[12]').each do |rbi| puts "RBI: " + rbi.content end
x+=1 end

end




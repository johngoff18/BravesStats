task :stat_fetch => :environment do
  require 'HTTParty'
  require 'Nokogiri'
  
  doc = HTTParty.get("https://www.baseball-reference.com/teams/ATL/2019.shtml")
  @parse_page ||= Nokogiri::HTML(doc)
  
  x=1;
  while x<9
    player = Player.new
     @parse_page.xpath('//*[@id="team_batting"]/tbody/tr['+x.to_s+']/td[2]/strong/a').each do |name|
       player = Player.find_by(name: name.content)
       puts "Player: " + name.content
     end
     @parse_page.xpath('//*[@id="team_batting"]/tbody/tr['+x.to_s+']/td[20]').each do |ops| 
       player.ops = ops.content
     end
     
     @parse_page.xpath('//*[@id="team_batting"]/tbody/tr['+x.to_s+']/td[17]').each do |ba| 
       player.ba = ba.content
     end
     
     @parse_page.xpath('//*[@id="team_batting"]/tbody/tr['+x.to_s+']/td[11]').each do |hr| 
       player.hr = hr.content
     end
     
     @parse_page.xpath('//*[@id="team_batting"]/tbody/tr['+x.to_s+']/td[12]').each do |rbi| 
       player.rbi = rbi.content
     end
     player.save
     x+=1
  end
end


 
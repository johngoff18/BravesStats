json.extract! player, :id, :name, :url, :ops, :ba, :hr, :rbi, :created_at, :updated_at
json.url player_url(player, format: :json)

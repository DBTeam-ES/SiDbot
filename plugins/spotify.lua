local doc = [[
	🔨 /spotify [nome da musica]
	Pesquisar de musica no spotify
]]

local triggers = {
	'^/spotify[@'..bot.username..']*'
}

local action = function(msg)
  local input = msg.text:input()
  if not input then
  	sendReply(msg, doc)
	return
  end
  -- URL
  local BASE_URL = "https://api.spotify.com/v1/search"
  local URLP = "?q=".. (URL.escape(input) or "").."&type=track&limit=5" -- Limit 5
  -- Decode json
  local decj, tim = HTTPS.request(BASE_URL..URLP)
  if tim ~=200 then return nil  end
  -- Table
  local spotify = JSON.decode(decj)
  local tables = {}
  for pri,result in ipairs(spotify.tracks.items) do
    table.insert(tables, {
        spotify.tracks.total,
        result.name .. ' - ' .. result.artists[1].name,
        result.external_urls.spotify
      })
  end
  -- Print Tables
  local gets = ""
  for pri,cont in ipairs(tables) do
    gets=gets.."▶️ "..cont[2].."\n"..cont[3].."\n"
  end
  -- ERRO 404
  local text_end = gets -- Text END
  if gets == "" then
    text_end = "Música não encontrado"
  end
	sendMessage(msg.chat.id, text_end)
end

return {
	action = action,
	triggers = triggers,
	doc = doc
}

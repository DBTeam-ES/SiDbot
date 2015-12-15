local doc = [[
  🔨 /info
  SiD Info.
]]

local triggers = {
	''
}

local action = function(msg)

	local message = [[
  S̲̅ɪ̲̅D̲̅
    Meu nome é SiD 
    💼/Ajuda  💿 IA (BySimSimi)  
    --🔨SiDv]] .. version .. [[.
    
    DEV:@TiagoDanin
    Channel:@BotSiD
    Github:[/TiagoDanin/SiDBot](https://github.com/TiagoDanin/SiDbot)
    Sugestão e Suporte:/Sos [MSG]

  Based on otouto v3.1 by @topkecleon.
  licensed GPLv2.
  ]] -- Please do not remove this message. ^.^

	if msg.new_chat_participant and msg.new_chat_participant.id == bot.id then
		sendMessage(msg.chat.id, message)
		return
	elseif string.match(msg.text_lower, '^/sobre[@'..bot.username..']*') or string.match(msg.text_lower, '^/info[@'..bot.username..']*') or string.match(msg.text_lower, '^/about[@'..bot.username..']*') then
		sendMessage(msg.chat.id, message, true, msg.message_id, true)
		return
	end

	return true

end

return {
	action = action,
	triggers = triggers,
	doc = doc
}

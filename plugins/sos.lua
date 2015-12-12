local doc = [[
	🔨 /sos [text]
	Suporte SiD.
]]

local triggers = {
	'^/sos[@'..bot.username..']*'
}

local action = function(msg)

	local input = msg.text:input()

	if input then
	  if not msg.from.username then
	      msg.from.username = "nil"
	      end
	  local user = msg.from.id .. ' -:- @' .. msg.from.username
	  local text = user .. '::> \n' .. input
	
	  sendReply(msg, "📩 Enviando - Send")
	  sendMessage(config.moderation.admin_group, latcyr(text))
	
	else
		sendReply(msg, doc)
	end

end

return {
	action = action,
	triggers = triggers,
	doc = doc
}

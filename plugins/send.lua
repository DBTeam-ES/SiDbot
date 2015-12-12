local triggers = {
	'^/send[@'..bot.username..']*'
}

local action = function(msg)
	local input = msg.text:input()
	if not input then
		sendReply(msg, "ERRO")
		return
	end
	if not config.moderation.admins[tostring(msg.from.id)] then 
		send_msg(msg, config.errors.not_mod)
		return
	end
	if not msg.from.username then
		msg.from.username = "nill"
	end
	
	local id = get_word(input, 1)
	local user = msg.from.id .. ' -:- @' .. msg.from.username
	local text = '🔔 Olá vc tem uma nova msg... \n 👤 De: ' .. user .. ' \n ✉️MSG:' .. string.gsub(input, id, '')
	sendMessage(id, latcyr(text))
	sendReply(msg, "📩 Enviando - Send")
end

return {
	action = action,
	triggers = triggers
}

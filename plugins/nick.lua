local doc = [[
	🔨 /nick [nick]
  Troca o nick (Apelido).
]]

local triggers = {
	'^/nick[@'..bot.username..']*'
}

local action = function(msg)

	local input = msg.text:input()
	if not input then
		sendReply(msg, doc)
		return true
	end

	if string.len(input) > 25 then
		sendReply(msg, 'Max 25.')
		return true
	end

	nicks = load_data('nicknames.json')

	if input == '-' then
		nicks[msg.from.id_str] = nil
		sendReply(msg, 'Ok, Não falou mais esse nome.')
	else
		nicks[msg.from.id_str] = input
		sendReply(msg, 'Ok, Agora vou chamar de "' .. input .. '".')
	end

	save_data('nicknames.json', nicks)
	return true

end

return {
	action = action,
	triggers = triggers,
	doc = doc
}

 -- Admins can blacklist a user from utilizing this bot. Use via reply or with an ID as an argument. Un-blacklist a user with the same command.

local triggers = {
	'^/blacklist',
	'^/offuser'
}

local action = function(msg)

	if not config.moderation.admins[tostring(msg.from.id)] then
		return send_msg(msg, 'Não quero...')
	end

	local name
	local input = get_input(msg.text)
	if not input then
		if msg.reply_to_message then
			input = msg.reply_to_message.from.id
			name = msg.reply_to_message.from.first_name
		else
			return send_msg(msg, 'Amigo, Coloca o ID.')
		end
	end

	local id = tostring(input)
	if not name then name = id end

	if blacklist[id] then
		blacklist[id] = nil
		send_message(msg.chat.id, name .. ' Saiu - blacklist.')
	else
		blacklist[id] = true
		send_message(msg.chat.id, name .. ' ADD - blacklisted.')
	end

	save_data('blacklist.json', blacklist)

end

return {
	doc = doc,
	triggers = triggers,
	action = action
}

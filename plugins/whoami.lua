local triggers = {
	'^/who[ami]*[@'..bot.username..']*$'
}

local action = function(msg)

	if msg.reply_to_message then
		msg = msg.reply_to_message
	end

	local from_name = msg.from.first_name
	if msg.from.last_name then
		from_name = from_name .. ' ' .. msg.from.last_name
	end
	if msg.from.username then
		from_name = '@' .. msg.from.username .. ', >> ' .. from_name
	end
	from_name = from_name .. ' (ID:' .. msg.from.id .. ')'

	local to_name
	if msg.chat.title then
		to_name = msg.chat.title .. ' (' .. math.abs(msg.chat.id) .. ').'
	else
		to_name = '@' .. bot.username .. ', >> ' .. bot.first_name .. ' (' .. bot.id .. ').'
	end

	local message = ' ' .. from_name .. to_name

	local nicks = load_data('nicknames.json')
	if nicks[msg.from.id_str] then
		message = message .. '\nSeu nick: ' .. nicks[msg.from.id_str] .. '.'
	end

	sendReply(msg, message)

end

return {
	action = action,
	triggers = triggers
}

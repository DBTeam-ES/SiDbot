local PLUGIN = {}

PLUGIN.doc = [[
	🔨 /who
	Obter os ids
]]

PLUGIN.triggers = {
	'^/whos$',
	'^/who$'
}

function PLUGIN.action(msg)

	if msg.from.id == msg.chat.id then
		to_name = '@' .. bot.username .. ' (' .. bot.id .. ')'
	else
		to_name = string.gsub(msg.chat.title, '_', ' ') .. ' (' .. string.gsub(msg.chat.id, '-', '') .. ')'
	end

	if msg.reply_to_message then
		msg = msg.reply_to_message
	end

	local nicknames = load_data('nicknames.json')
	local message = ''
	if nicknames[tostring(msg.from.id)] then
		message = 'Hi, ' .. nicknames[tostring(msg.from.id)] .. '!\n'
	end

	local from_name = msg.from.first_name
	if msg.from.last_name then
		from_name = from_name .. ' ' .. msg.from.last_name
	end
	if msg.from.username then
		from_name = '@' .. msg.from.username .. ' : ' .. from_name
	end
	from_name = from_name .. ' (' .. msg.from.id .. ')'

	local message = message .. "Seu username: " .. from_name .. ' >> ' .. to_name .. '.'

	send_msg(msg, message)

end

return PLUGIN

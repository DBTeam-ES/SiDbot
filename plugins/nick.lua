local doc = [[
	🔨 /nick [nick]
	Troca o nick (Apelido).
]]

local triggers = {
	'^/nick'
}

local action = function(msg)

	local data = load_data('nicknames.json')
	local id = tostring(msg.from.id)
	local input = get_input(msg.text)
	if not input then
		local message = ''
		if data[id] then
			message = '\nSeu apelido é atualmente' .. data[id] .. '.'
		end
		return send_msg(msg, doc..message)
	end

	if input == '--' then
		data[id] = nil
		save_data('nicknames.json', data)
		send_msg(msg, 'Seu apelido fui deletado.')
		return
	end

	input = input:sub(1,64):gsub('\n',' ')
	data[id] = input
	save_data('nicknames.json', data)
	send_msg(msg, 'Seu novo apelido: ' .. input .. '.')

end

return {
	doc = doc,
	triggers = triggers,
	action = action
}

local PLUGIN = {}

PLUGIN.doc = [[
	🔨 /ajuda [plugin]
	Obter ajuda de diversos plugins.
]]

PLUGIN.triggers = {
	'^/help',
	'^/h$',
	'^/start$',
	'^/ajuda$',
	'^/ajuda@SiDBot$'
}

function PLUGIN.action(msg)

	if string.find(msg.text, '@') and not string.match(msg.text, 'help@'..bot.username) then return end

	local input = get_input(msg.text)

	if input then
		for i,v in ipairs(plugins) do
			if v.doc then
				if '/' .. input == trim_string(first_word(v.doc)) then
					return send_msg(msg, v.doc)
				end
			end
		end
	end

	local message = '💼 Plugins lista: \n \n' .. help_message .. [[
	]]

	if msg.from.id ~= msg.chat.id then
		if not send_message(msg.from.id, message, true, msg.message_id) then
			return send_msg(msg, message) -- Unable to PM user who hasn't PM'd first.
		end
		return send_msg(msg, 'Eu enviei-lhe as informações solicitadas em uma mensagem privada.')
	else
		return send_msg(msg, message)
	end

end

return PLUGIN

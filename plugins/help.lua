 -- This plugin should go at the end of your plugin list in
 -- config.lua, but not after greetings.lua.

local help_text = '💼  Lista:\n'

for i,v in ipairs(plugins) do
	if v.doc then
		local a = string.sub(v.doc, 1, string.find(v.doc, '\n')-1)
		help_text =  help_text .. a .. '\n'
	end
end

-- local help_text = help_text .. 'Arguments: <required> [optional]'

local triggers = {
	'^/h[elp]*[@'..bot.username..']*$',
	'^/start[@'..bot.username..']*',
  '^/ajuda*[@'..bot.username..']*$'
}

local action = function(msg)

	if msg.from.id ~= msg.chat.id then
		if sendMessage(msg.from.id, help_text) then
			sendReply(msg, 'Eu enviei-lhe as informações solicitadas em uma mensagem privada. ;)')
		else
			sendReply(msg, help_text)
		end
	else
		sendReply(msg, help_text)
	end

end

return {
	action = action,
	triggers = triggers
}

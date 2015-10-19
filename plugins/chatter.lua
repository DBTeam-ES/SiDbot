 -- shout-out to @luksireiku for showing me this site

local PLUGIN = {}

PLUGIN.typing = true

PLUGIN.triggers = {
	'^@sidbot, ',
	'^[Ss][Ii][Dd]'
}

function PLUGIN.action(msg)

	local input = get_input(msg.text)

	local url = 'http://www.simsimi.com/requestChat?lc=pt&ft=1.0&req=' .. URL.escape(input)

	local jstr, res = HTTP.request(url)

	if res ~= 200 then
		return send_message(msg.chat.id, "I don't feel like talking right now.")
	end

	local jdat = JSON.decode(jstr)

	if string.match(jdat.res, '^I HAVE NO RESPONSE.') or not jdat then
		jdat.res = "Hi, Vamos fala sobre vc?"
	end

	local message = jdat.res

	-- Let's clean up the response a little. Capitalization & punctuation.
	filter = {
		['%aimi?%aimi?'] = bot.first_name,
		['^%s*(.-)%s*$'] = '%1',
		['^%l'] = string.upper,
		['USER'] = msg.from.first_name
	}

	for k,v in pairs(filter) do
		message = string.gsub(message, k, v)
	end

	if not string.match(message, '%p$') then
		message = message .. '.'
	end

	send_message(msg.chat.id, message)

end

return PLUGIN

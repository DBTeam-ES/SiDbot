 -- shout-out to @luksireiku for showing me this site

local PLUGIN = {}

PLUGIN.typing = true

PLUGIN.triggers = {
	'^@' .. bot.username .. ', ',
	'^sid' .. ', '
}

function PLUGIN.action(msg)

	local input = get_input(msg.text)

	local url = 'http://www.simsimi.com/requestChat?lc=en&ft=1.0&req=' .. URL.escape(input)

	local jstr, res = HTTP.request(url)

	if res ~= 200 then
		return send_message(msg.chat.id, "I don't feel like talking right now.")
	end

	local jdat = JSON.decode(jstr)

	local message = jdat.res

	send_message(msg.chat.id, message)

end

return PLUGIN
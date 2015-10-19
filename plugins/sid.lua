 -- shout-out to @luksireiku for showing me this site

local PLUGIN = {}

PLUGIN.typing = true

PLUGIN.triggers = {
	'^@sidbot, ',
	'^[Ss][Ii][Dd]'
}

function PLUGIN.action(msg)

	local input = get_input(msg.text)

	local url = 'http://www.simsimi.com/requestChat?lc=pt&ft=1.0&req='

	local jstr, res = HTTP.request(url)

	if res ~= 200 then return nil end

	local jdat = JSON.decode(jstr)
	
	local message = jdat .. input

	send_message(msg.chat.id, message)

end

return PLUGIN

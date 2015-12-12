 -- Actually the simplest plugin ever!

local triggers = {
	'^/ping[@'..bot.username..']*'
}

local action = function(msg)
	sendMessage(msg.chat.id, '🎾Pong!')
end

return {
	action = action,
	triggers = triggers
}

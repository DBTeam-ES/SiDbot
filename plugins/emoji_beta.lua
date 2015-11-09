-- ByTiagoDanin
-- Bug '-'
 PLUGIN = {}

PLUGIN.doc = [[
	🔨 /beta <text>
	beta.
]]

PLUGIN.triggers = {
	'^/beta'
}

function PLUGIN.action(msg)

  if msg.reply_to_message then
  	msg = msg.reply_to_message
  end

  local id_chat = msg.chat.id
  local url = 'https://api.telegram.org/bot'
  url = url .. config.bot_api_key
  url = url .. '/sendMessage?chat_id=' .. id_chat
  url = url .. '&text=Emoji&reply_markup={%22keyboard%22:[[%22(%20%CD%A1%C2%B0%20%CD%9C%CA%96%20%CD%A1%C2%B0)%22],[%22%E0%B2%A0_%E0%B2%A0%22]],%22one_time_keyboard%22:true}'
  local decj, tim = HTTPS.request(url)
  if tim ~=200 then return nil end
	
  local message = 'DEBUG'
  send_msg(msg, message)

end

return PLUGIN
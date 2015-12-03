-- ByTiagoDanin
-- Bug '-'
 PLUGIN = {}

PLUGIN.doc = [[
	🔨 /beta <text>
	beta.
]]

PLUGIN.triggers = {
	'^/emoji'
}

function PLUGIN.action(msg)

  if msg.reply_to_message then
  	msg = msg.reply_to_message
  end
  
  time_init = os.time()
  
  local id_chat = msg.chat.id
  local url = 'https://api.telegram.org/bot'
  url = url .. config.bot_api_key
  url = url .. '/sendMessage?chat_id=' .. id_chat
  
  url_emoji = url .. '&text=Emoji&reply_markup={%22keyboard%22:[[%22(%20%CD%A1%C2%B0%20%CD%9C%CA%96%20%CD%A1%C2%B0)%22],[%22%E0%B2%A0_%E0%B2%A0%22]],%22one_time_keyboard%22:true}'
  local decj, tim = HTTPS.request(url_emoji)
  if tim ~=200 then return nil end
  
  if time_init < os.time() ~= -50 then
    local url_hide = url .. '&text=Hide&reply_markup={"hide_keyboard":true}'
    local dech, timh = HTTPS.request(url_hide)
    if timh ~=200 then return nil end
    time_init = os.time()
  end
end

return PLUGIN
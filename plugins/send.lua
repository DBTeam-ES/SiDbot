-- byTiagoDanin
-- Telegram:@TiagoDanin -:- Twitter:@_TiagoEDGE
local PLUGIN = {}

PLUGIN.triggers = {
  '^/send'
}

function PLUGIN.action(msg)
  
  local input = get_input(msg.text)
  if not input then
    send_msg(msg, "/send userid msg")
    return nil
  end
  
  if not config.moderation.admins[tostring(msg.from.id)] then 
    return
    send_msg(msg, "👻 Haha vc não quero :V")
  end
  
  if not msg.from.username then
    msg.from.username = "nill"
  end
  
  local id = first_word(input)
  local user = msg.from.id .. ' -:- @' .. msg.from.username
  local text = '🔔 Olá vc tem uma nova msg... \n 👤 De: ' .. user .. ' \n ✉️MSG:' .. string.gsub(input, id, '')
  send_message(id, text)
  send_msg(msg, "📩 Enviando - Send")

end

return PLUGIN
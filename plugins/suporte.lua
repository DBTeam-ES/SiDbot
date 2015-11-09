-- byTiagoDanin
-- Telegram:@TiagoDanin -:- Twitter:@_TiagoEDGE
local PLUGIN = {}

PLUGIN.doc = [[
  🔨 /sos <text>
  Suporte SiD.
]]

PLUGIN.triggers = {
  '^/suporte',
  '^/sos'
}

function PLUGIN.action(msg)
  
  local input = get_input(msg.text)
  if not input then
    send_msg(msg, PLUGIN.doc)
    return nil
  end
  local id = '-36333593'
  local user = msg.from.id
  local text = user .. '::> \n' .. input
  send_message(id, text)
  send_msg(msg, "Enviando - Send")

end

return PLUGIN
-- byTiagoDanin
-- Telegram:@TiagoDanin -:- Twitter:@_TiagoEDGE
local PLUGIN = {}

PLUGIN.doc = [[
  🔨 /ping
  Ping Pong.
]]

PLUGIN.triggers = {
  '^/ping'
}

function PLUGIN.action(msg)
  send_msg(msg, "pong 🎾")
end

return PLUGIN
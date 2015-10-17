local PLUGIN = {}

PLUGIN.doc = [[
  🔨 /info
  SiD Info.
]]

PLUGIN.triggers = {
  '^/about',
  '^/info',
  '^/sobre'
}

function PLUGIN.action(msg)

  local message = [[
    Meu nome é ]] .. bot.first_name .. [[
    Para ver obter ajuda user.
    💼/Ajuda  💿 SOON IA SiD  🔨SiDv]] .. VERSION .. [[.
    
    DEV:@TiagoDanin
    Chanel:Telegram.me/BotSid

    Based on otouto v2.11 by @topkecleon.
    SiD v2 is licensed GPLv2.
  ]] -- Please do not remove this message. ^.^

  send_message(msg.chat.id, message, true)

end

return PLUGIN

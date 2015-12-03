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
  S̲̅ɪ̲̅D̲̅
    Meu nome é SiD 
    💼/Ajuda  💿 IA (BySimSimi)  
    --🔨SiDv]] .. VERSION .. [[.
    
    DEV:@TiagoDanin
    Chanel:Telegram.me/BotSid
    Sugestão e Suporte:/Sos [MSG]

  Based on otouto v2.11 by @topkecleon.
  licensed GPLv2.
  ]] -- Please do not remove this message. ^.^

  send_message(msg.chat.id, message, true)

end

return PLUGIN

return {
	bot_api_key = '107890456:AAGj1OILK_w7gv0rRI26YFgLwazBrbHtRuQ',
	google_api_key = '',
	google_cse_key = '',
	lastfm_api_key = '60ae7e5412fedef8c1c00dd8c745fd28',
	owm_api_key = '',
	biblia_api_key = '',
	thecatapi_key = '',
	time_offset = 0,
	lang = 'pt-br',
	admin = 89198119,
	about_text = [[ ^.^ ]]	,
	errors = {
		connection = 'Ops. Não conseguir abrir',
		results = 'Não achei :',
		argument = 'Invalid argument.',
		syntax = 'Invalid syntax.',
		antisquig = 'PT',
		moderation = '😒 Não quero....',
		not_mod = '😒 Não quero ....',
		not_admin = '😒 Não quero ...',
		chatter_connection = 'ERRO ',
		chatter_response = 'Vamos fala da nova TecPix?'
	},
	greetings = {
		['Hi, #NAME.'] = {
			'hello',
			'Ola!'
			}
	},
  moderation = {
    admins = {
      ['89198119'] = 'TiagoEDGE',
      ['67577672'] = 'Wesley',
      ['26691459'] = 'Vitor'
    },
    admin_group = -36333593,
    realm_name = 'ProjectX'
  },
	plugins = {
    -- Base Plugin
		'blacklist.lua',
		'floodcontrol.lua',
		'admin.lua', 
		'about.lua', 
		'ping.lua', 
		'whoami.lua', 
		'nick.lua', 
	  'echo.lua',
    -- Beta plugins
    -- New Plugin
    'spotify.lua',
    'calc.lua',
    -- DB
    'chatter.lua',
    -- SID
    'help.lua',
    'hackernews.lua',
    'sos.lua',
    'send.lua'
	}
}

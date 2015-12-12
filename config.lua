return {
	bot_api_key = '107890456:AAGyqOZmLBoN7tHpePo5EHSL0jAmT-oKbn4',
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
			'Ola!',
            'oi'
		},
		['Adeus, #NAME.'] = {
			'bye',
            'Até mais',
            'Adeus 0/'
		},
		['Bem-Vindo, #NAME.'] = {
			'Bem-Vindo'
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
	    'help.lua'
    -- Beta plugins
    -- New Plugin
    -- DB
	}
}

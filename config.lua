return {
	bot_api_key = '',
	google_api_key = '',
	google_cse_key = '',
	lastfm_api_key = '',
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
		['Hello, #NAME.'] = {
			'hello',
			'Ola!',
      'oi'
		},
		['Goodbye, #NAME.'] = {
			'bye',
      'Até mais',
      'Adeus 0/'
		},
		['Welcome back, #NAME.'] = {
			'Bem-Vindo'
		},
		['You\'re welcome, #NAME.'] = {
			'Obrigador'
		}
	},
  moderation = {
    admins = {
      ['89198119'] = 'TiagoEDGE'
    },
    admin_group = -36333593,
    realm_name = 'TiagoEDGE'
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

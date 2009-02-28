#
#  Api.rb
#  Umbrella
#
#  Created by Bodaniel Jeanes on 27/02/09.
#  Copyright (c) 2009 Mocra. All rights reserved.
#

require 'yaml'
require 'net/http'

class Api
	def awakeFromNib
		config
	end
	
	def upload_torrent(file)
		# a bit of a hack because net/http doesn't have multipart support
		auth = "-u #{username}:#{password}"
		cmd = "curl #{auth} -F torrent_file='@#{file}' #{api_url('action=add-file')}"
		puts cmd
		system(cmd)
	end
	
	protected
		
		%w(host port username password).each do |attribute|
			define_method attribute do
				config[attribute]
			end
		end
		
		def api_url(params = '')
			"http://#{host}:#{port}/gui/?#{params}"
		end
	
		def config
			@config ||= YAML.load(File.read(File.join($resourcePath,'config.yml')))
		end
end

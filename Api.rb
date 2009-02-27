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
	
	protected
		
		%w(host port username password).each do |attribute|
			define_method attribute do
				config[attribute]
			end
		end
	
		def config
			@config ||= YAML.load(File.read(File.join($resourcePath,'config.yml')))
		end
end

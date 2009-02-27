#
#  ApplicationController.rb
#  Umbrella
#
#  Created by Bodaniel Jeanes on 27/02/09.
#  Copyright (c) 2009 Mocra. All rights reserved.
#

class ApplicationController
  attr_accessor :label
  attr_accessor :api
  
  def awakeFromNib
  
  end
  
  def application(sender, openFile: filename)
	application(sender, openFiles: [filename])
  end
  
  def application(sender, openFiles: filenames)
	puts "openFiles: #{filenames}"
	filenames.each do |filename|
		# send to utorrent API
		
		label.stringValue = "Received file #{filename}"
	end
  end
end
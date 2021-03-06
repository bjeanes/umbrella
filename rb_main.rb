#
# rb_main.rb
# Umbrella
#
# Created by Bodaniel Jeanes on 26/02/09.
# Copyright Mocra 2009. All rights reserved.
#

# Loading the Cocoa framework. If you need to load more frameworks, you can
# do that here too.
framework 'Cocoa'

# Loading all the Ruby project files.
$resourcePath = NSBundle.mainBundle.resourcePath.fileSystemRepresentation

require File.join($resourcePath, 'json', 'json')

Dir.entries($resourcePath).each do |path|
  if path != File.basename(__FILE__) and path[-3..-1] == '.rb'
    require(path)
  end
end

# Starting the Cocoa main loop.
NSApplicationMain(0, nil)

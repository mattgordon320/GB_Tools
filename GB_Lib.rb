=begin

Major credits to go ThomThom (thomas@thomthom.net), whose plugin structure was the
basis of this plugin. This plugin is NOT ready for distribution and is in it's
planning stages only.

=end

require 'sketchup.rb'
require 'extensions.rb'

#--------------------------------------------------------------------------------------------------

module GB
	module Lib

		### CONSTANTS ###

		#-Plugin-Information-----------------------------------------------------------------------

		PLUGIN_ID 			= File.basename( __FILE__ ).freeze
		PLUGIN_NAME 		= 'GB_Lib'.freeze
		PLUGIN_VERSION 		= '0.0.1'.freeze

		#------------------------------------------------------------------------------------------

		### EXTENSION ### -------------------------------------------------------------------------

		unless file_loaded?( __FILE__ )
			# Since this is a library, there is no need for the SketchupExtension to load
		    # the whole library. We want only what is needed to be loaded.
		    # Therefore, the SketchupExtension is set to load itself. The 'file_loaded'
		    # checks are prevent an infinite loop.
		    
		    # Currently, one could have just specified a non-existant file - no errors
		    # are raised - but that could change.
		    
		    # The purpose of this file is entirely to make it compatible with the
		    # Extension Warehouse.
		    file_loaded( __FILE__ )
		    ex 				= SketchupExtension.new(PLUGIN_NAME, __FILE__ )
		    ex.description 	= 'Library of shared functions used by other extensions by same author'
		    ex.version 		= PLUGIN_VERSION
		    ex.copyright	= 'Not Applicable'
		    ex.creator		= 'Matthew Gordon'
		    Sketchup.register_extension(ex, true)
		end

	end #module Lib
end #module GB

#--------------------------------------------------------------------------------------------------

file_loaded( __FILE__ )

#--------------------------------------------------------------------------------------------------
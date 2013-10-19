=begin

=end

require 'sketchup.rb'
require 'GB_Lib.rb'

#---------------------------------------------------------------
#MAIN SCRIPT#

module GraphicBridge
	module Lib

		#Constants#
		#Plugin Information

		PLUGIN_ID			= File.basename(__FILE__).freeze
		PLUGIN_NAME			= 'GB_Lib'.freeze
		PLUGIN_VERSION		= '0.0.1'.freeze

		#-------------------------------------------------------

		unless file_loaded?(__FILE__)
			file_loaded(__FILE__)
			ex				= SketchupExtension.new(PLUGIN_NAME, __FILE__)
			ex.description	= 'Guide Control Tools for SketchUp'
			ex.version 		= PLUGIN_VERSION
			ex.copyright	= 'Graphic Bridge/Matthew M Gordon'
			ex.creator		='Matthew M Gordon'
			Sketchup.register_extension(ex, true)
		end

	end#module Lib
end #module GraphicBridge

UI.messagebox("This test was succesful!")


#---------------------------------------------------------------

file_loaded( __FILE__ )

#---------------------------------------------------------------
=begin
	
comments go here
	
=end


require "sketchup.rb"

module GB_Tools

	unless file_loaded? (__FILE__)
		menu = UI.menu('Plugins')
		menu.add_item('GB_Tools') {self.message_test}
	end

	#Use instance variables inside modules instead of global variables.
	@test_variable = 'Graphic Bridge Tool Test!'

	# def self.message_test
	# 	puts @test_variable
	# end

	def self.message_test
		puts UI.messagebox "#{@test_variable}", MB_YESNOCANCEL
		if result = 6 # YES
			UI.messagebox("You clicked YES!")
		elsif result = 7 #NO
			UI.messagebox("You clicked NO!")
		end
	end #def


	file_loaded(__FILE__)

end #Module
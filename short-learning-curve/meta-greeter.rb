#!/usr/bin/env ruby

class MetaGreeter 
	attr_accessor :names
	

	# create the object
	def initialize(names = "World")
		@names = names
	end 

	# say hi to everybody
	def say_hi
		if @names.nil?
			puts "...."
		elsif @names.respond_to?("each")
			# @names is a list of somekind, so iterate
			@names.each do |name|
				puts "Hello (Mr or Mrs) #{name}!"
			end
		else
			puts "Hello #{@names}!"
		end
	end

	#say bye to everybody
	def say_bye
		if @names.nil?
			puts "...."
		elsif @names.respond_to?("join")
			#joins the list elements with comas,
			puts "Goodbye #{@names.join(", ")}. We will be missing you..."
		else
			puts "Goodbye #{@names}. See you soon...."
		end

	end

end
if __FILE__ == $0
	mG = MetaGreeter.new
	mG.say_hi
	mG.say_bye

	#change names
	mG.names = "Skillman"
	mG.say_hi
	mG.say_bye

	#change the names to an array of names
	mG.names = ["Mos","Tiquos", "Aynice", "Jordan", "Sultan"]
	mG.say_hi
	mG.say_bye

	#change to nil
	mG.names = nil
	mG.say_hi
	mG.say_bye
end

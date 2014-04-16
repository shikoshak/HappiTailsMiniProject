#require 'pry'
# require 'rainbow'
require_relative 'data'

puts "Please choose one of the following options:
		(da) => display all animals
		(dc) => display all clients
		(ca) =>  Create an animal
		(cc) =>  Create a client
		(aa) => adopt an animal
		(ra) => return an animal
		(q)  => quit program"

response = gets.chomp.downcase #set this equal to something


while response != 'q'
  ##Fill in code here

	case response
	when "da"
		# puts "Enter an animal's name?"
		# name= gets.chomp

		#display all animals in shelter
		 $shelter.display_pets

		
		
	when "dc"
		# puts "Enter a client"
		# client = gets.chomp
		$shelter.display_clients
		

	when "ca"
		puts "Enter a pet name"
		name = gets.chomp
		puts "Enter a pet age"
		age = gets.chomp
		puts "Enter a pet gender"
		gender = gets.chomp
		puts "Enter a pet species"
		species = gets.chomp
		
		$shelter.create_a_animal(name, age, gender, species)

		# new_animal = Animal.new(name, age, gender, species)
		# puts new_animal

	when "cc"
		puts "Enter a client name"
		name = gets.chomp
		puts "Enter a client age"
		age = gets.chomp
		puts "Enter a client gender"
		gender = gets.chomp
		puts "Enter the number of children"
		number_of_children = gets.chomp
		$shelter.create_a_client(name, age, gender, number_of_children)
	 	# new_client = Client.new(name, age, gender, number_of_children)
		puts new_client

	when "aa"
		 # puts "what client wants adopt"
		 #  client_adopt = gets.chomp
		 # puts "What pet will be adopted?"
		 # 	pet_adopted = gets.chomp

		 $shelter.adopt  

	when "ra"
		$shelter.return



 end




  puts "Please choose one of the following options:
		(da) display all animals
		(dc) display all clients
		(ca) Create an animal
		(cc) Create a client
		(aa) adopt an animal
		(ra) return an animal
		(q) quit program"
  	response = gets.chomp.downcase
  	#set this equal to something
end

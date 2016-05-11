
#menu print out

def menu
	puts "CHEATSHEET"
	puts "1. Command Line"
	puts "2. Search"
	puts "3. Exit"
	puts "***** Make a selection *****"
end
	
def command_menu

	while true
	    puts "CAMMAND LINE"
		puts "1. mv"
		puts "2. cp"
		puts "3. mkdir"
		puts "4. ls"
		puts "5. rm"
		puts "6. Main Main"

		choice = gets.chomp.to_i

		if choice == 1
			puts `man mv`
		elsif choice == 2
			puts `man cp`
		elsif choice == 3
			puts `man mkdir`
		elsif choice == 4
			puts `man ls`
		elsif choice == 5
			puts `man rm`
		elsif choice == 6
			# menu
			break
		else
			puts "choice is invalid try again"
		end	
	end		
end

def search_command
    puts "Enter word: "
	cmd = gets.chomp
	puts `man #{cmd}`
end

while true
	selection = 0
	menu
	selection = gets.chomp.to_i

	case selection

		when 1
			command_menu
		when 2
			puts "Search Any Word!"
			search_command
		when 3
			exit
	end
end

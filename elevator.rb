class Elevator
	i = 0
	floor = rand(0..125)
	sleep 0.2
	puts "You are currently on floor #{floor}"

	while i == 0
		sleep 0.2
		puts "would you like to go up or down?"
		sleep 0.2
		puts "type in 'floor' to view current floor or exit to end program"
		input = gets.chomp
	if input.upcase == "UP"
		puts "How many floors do you want to go up?"
		up = gets.to_i
		if floor + up >= 125
			sleep 0.2
			puts "You've reached the top floor"
			floor = 125
		else
			floor += up
		end
	elsif input.upcase == "DOWN"
		puts "How many floors do you want to go down?"
		down = gets.to_i
		if floor - down <= 0
			sleep 0.2
			puts "You have reached the lowest level"
			floor = 0
		else
			floor -= down
		end
	elsif input.upcase == "FLOOR"
		puts "you are on floor #{floor}"
	elsif input.upcase == "EXIT"
		sleep 0.2
		puts "Hurray, you made it to floor #{floor}"
		sleep 0.2
		puts "see you next time!"
		i = 6
		sleep 0.2
	else puts "That wasn't a correct input"
	end
end
end

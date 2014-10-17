def ceaser_cipher(string,count)
	individual_character = string.split("")
	up_boubdary = 90
	down_boundary = 122
	return_character = []

	individual_character.each do |char|
		asc_code = char.ord
		asc_code_shift = asc_code+count

		if asc_code.between?(97,122)
			if asc_code_shift > down_boundary
				asc_code_shift -= down_boundary
				return_character << (96+asc_code_shift).chr
			else
				return_character << asc_code_shift.chr
			end
		elsif asc_code_shift.between?(65,90)
			if asc_code_shift > up_boubdary
				asc_code_shift-=up_boubdary
				return_character << (64+asc_code_shift).chr
			else
				return_character << asc_code_shift.chr
			end
		else 
			return_character << char
		end 
	end

		puts return_character.join
end

puts "Please Enter the string whici you want to Decipher.."
user_string = gets.chomp
puts "Please Enter factor by which you wanna decipher."
user_factor = gets.chomp.to_i

ceaser_cipher(user_string,user_factor)
#ceaser_cipher("What a string!", 5)
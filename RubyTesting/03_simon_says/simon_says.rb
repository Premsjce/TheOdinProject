def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, reps=2)
	( [str] * reps ).join(' ') 
end

def start_of_word(str,letter)
	str[0..letter-1]
end

def first_word(str)
	str.split(' ')[0]
end

def titleize(str)
	except = ["and", "the", "over"]
	arr = str.split(' ')
	 arr.each { |w|
			w.capitalize! unless except.include?(w)
		}
		arr[0].capitalize!
		arr.join(' ')
end
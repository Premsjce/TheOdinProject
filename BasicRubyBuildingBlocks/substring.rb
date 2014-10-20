def substring(word,dictonary)
	return_hash = Hash.new(0)

	dictonary.each do |x|
		counts  = x.scan(word).length
		return_hash[x] = counts unless counts <1 		
	end

	puts return_hash
end

dictionary_array = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substring("below",dictionary_array)
def bubble_sort(array_input, reverse_sorting = false)
	if reverse_sorting == false

		i=0
		while i < array_input.length-1
			k=0
			while k < array_input.length-1
				if array_input[k] > array_input[k+1]
					array_input[k],array_input[k+1] = array_input[k+1],array_input[k]					
				end
				k+=1
			end
			i+=1
		end
		return array_input

	else

		i=0
		while i < array_input.length-1
			k=0
			while k < array_input.length-1
				if array_input[k] < array_input[k+1]
					array_input[k],array_input[k+1] = array_input[k+1],array_input[k]					
				end
				k+=1
			end
			i+=1
		end
		return array_input
	end
end

print bubble_sort([1,9,2,3,5,11,99,211,0,1,2],true)

print bubble_sort(["Z", "C","A", "Q"])
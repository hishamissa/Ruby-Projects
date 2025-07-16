# TheOdinProject Project 4: Stock Picker 
#
# A method containting a simple implementation of the Bubble Sort Algorithm. 
#
# "Bubble sort, sometimes referred to as sinking sort, is a simple sorting algorithm that repeatedly steps through the input list
# element by element, comparing the current element with the one after it, swapping their values if needed. These passes through 
# the list are repeated until no swaps have to be performed during a pass, meaning that the list has become fully sorted."
#
# Hisham Issa, July 16, 2025

def bubble_sort(array)
	length = array.size - 1 # -1 for 0-based indexing

	# Pass through each entry in the array
	array.each do
		# Starting on the second index loop through the entire array
		for i in 1..length
			# Check if it is smaller than the prior number
			if array[i] < array[i-1]
				# Swap the two numbers
				temp = array[i]
				array[i] = array[i-1]
				array[i-1] = temp
			end
		end
	end
	print array 
end

arr = [5, 8, 1, 3, 9, 12, 8, 11, 2, 55, 4, 68, 3]
arr2 = [3, 2, 1]
bubble_sort(arr)


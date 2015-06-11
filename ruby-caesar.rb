def caesar(input,shift)
  
  alphabet_list = ('a'..'z').to_a
  input_list = input.split(//)
  answer= Array.new
  input_list.each do |letter|
    
	if alphabet_list.include? letter 
	  answer.push(alphabet_list[(alphabet_list.index(letter)+shift)%alphabet_list.size]) #Add the shift to the index of the letter, and output the letter using the new index
	
	elsif alphabet_list.include? letter.downcase
	  answer.push(alphabet_list[(alphabet_list.index(letter.downcase)+shift)%alphabet_list.size].upcase)
	
	else #accounts for spaces, punctuation etc.
	  answer.push(letter)
	
	end
  end
  print answer.join
  end
  
caesar("What a string!",5)
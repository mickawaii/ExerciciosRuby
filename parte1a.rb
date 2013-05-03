def palindrome?(string) 
	str = string.downcase.gsub(/\W/, '')
	str.reverse == str
end

puts palindrome?("Madam, I'm Adam!")

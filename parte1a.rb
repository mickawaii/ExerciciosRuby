def palindrome?(string) 
	str = string.downcase.gsub(/\W/, '')
	if(str.reverse == str)
		return true
	else
		return false
	end
end

def count_words(string)
	h = Hash.new
	
	string.downcase.gsub(/\W/, ' ').split.each do |s|
		(h.has_key?(s.to_s)) ? h[s] += 1 : h.store(s, 1)
	end
	
	h
end

puts count_words("A man, a plan, a canal -- Panama")
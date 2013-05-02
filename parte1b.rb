def count_words(string)
	h = Hash.new
	str = string.downcase.gsub(/\W/, ' ').split
	str.each do |s|
		if(h.has_key?(s.to_s))
			h[s] += 1
		else
			h.store(s, 1)
		end
	end
	return h.inspect
end
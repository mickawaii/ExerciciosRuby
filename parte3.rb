def anagrama(word1, word2)
  return word1.split('').permutation.to_a.member?(word2.split(''))
end

def combine_anagrams(words)
  h = Hash.new
  wo = words
  arr = []
  wo.each do |w|
    w.downcase!
    arr0 = [w]
    wo.each do |w0|
      if(anagrama(w, w0) && w != w0)
        arr0.push(w0)
        wo.delete(w0)
      end
    end
    arr.push(arr0)
  end
  return arr.inspect
end
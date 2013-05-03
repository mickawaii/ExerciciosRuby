def anagrama(word1, word2)
  return word1.downcase.split('').permutation.to_a.member?(word2.downcase.split(''))
end

def combine_anagrams(words)
  array_de_arrays = []

  words.each do |palavra_base|
    sub_array = [palavra_base]

    words.each do |palavra_percorrida|
      if(anagrama(palavra_base, palavra_percorrida) && palavra_base != palavra_percorrida)
        sub_array.push(words.delete(palavra_percorrida))
      end
    end

    array_de_arrays.push(sub_array)
  end

  array_de_arrays.inspect
end

puts combine_anagrams(['carS', 'foR', 'potatoes', 'rAcs', 'four','scar', 'creAms', 'scream'])
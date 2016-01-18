module AreAnagrams
     def self.are_anagrams?(string_a, string_b)
       
       elements_a = string_a.split("")    
       elements_b = string_b.split("")
       return false if elements_a.count != elements_b.count
       a_hash = {}
       b_hash = {}
      (0..elements_a.count-1).each do |index|
           a_hash[elements_a[index]] ||= 0
        a_hash[elements_a[index]] = a_hash[elements_a[index]] + 1 
         b_hash[elements_b[index]] ||= 0
         b_hash[elements_b[index]] = b_hash[elements_b[index]] + 1 
       end
     anagrams = true
     a_hash.each do |key,val| 
       if b_hash[key].nil? || (b_hash[key].to_i != val.to_i)
         anagrams = false
         break
         end
       end
     return anagrams
    end
 end
 


   puts AreAnagrams.are_anagrams?('momdad', 'dadmom')

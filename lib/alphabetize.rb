require "pry"

def alphabetize(arr)
#    esp_alph = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".split("") #original code, but array is not necessary for iteration
    
    esp_alph = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

#    new_hash = {} #Becuase this code is too restrictive, it is only able to sort by the first letter. How can I iterate over all letters while checking the esp_alpha array and assigning it the cooresponding index? Or is the index not the answer to this problem?
#    
#    arr.sort_by do |a|
#        a_position = 0
#        counter = 0
#        while counter < esp_alph.length
#            if a[0] == esp_alph[counter]
##            a_position = counter
#                break
#            end
#            counter += 1
#        end
#        new_hash[a] = counter
#    end
##    binding.pry
#    
#    arr = new_hash.sort_by(&:last).to_h
##    binding.pry
#    arr.keys
    
    new_hash = {} #Second attempt. This time, I made an array for each word, storing each corresponding letter's value as a new index (achieved through the shovel method for arrays). I ran into an issue with blank space breaking the loop before it was able to finish iterating over all the letters, so I removed the blank space and stored the returned string as a new value so as not to change words in the final array. The counter corresponded to the position in the esp_alph array -- in other words, I leveraged the counter of the loop to iterate over the array. I looped through both the esp_alph array and the word newly compact string (a_compact). Each time the condition was met (the value returned from the string position matched the value returned from the array index), the counter value was shoveled into the new_hash[a] array, a_position was increased by 1 (to check for the next letter in the string), AND counter was reset to 0 (so the entire esp_alph could be checked again. If the condition was not met (i.e. the letters did not match), the counter was incimented by one (i.e. the next letter in esp_alph was checled). This continued until the position counter equaled the length of the string (indicatng there were no more letters to check) and all the letters had been checked in the esp_alph array. While writing this, it's come to my attention that the iteration over esp_alph can be accomplished without turining it into an array. I will recode but keep the original commented out for historical purposes.
    
    arr.each do |a|
        new_hash[a] = []
        a_position = 0
        counter = 0
        a_compact = a.delete(" ")
        
        while counter < esp_alph.length && a_position < a_compact.length
            if a_compact[a_position] == esp_alph[counter]
                new_hash[a] << counter
                a_position += 1
                counter = 0
            else counter += 1
            end
        end
    end

#    new_hash.map do |word, positions_arr|
#       positions_arr.sort {|a, b| a <=> b}
#    end
    
    arr = new_hash.sort_by(&:last).to_h
#    binding.pry
    arr.keys
    
end
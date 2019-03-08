def substrings string
    
    dictionary = ["below",
                  "down", 
                  "go", 
                  "going", 
                  "horn", 
                  "how", 
                  "howdy", 
                  "it", 
                  "i", 
                  "low", 
                  "own", 
                  "part", 
                  "partner", 
                  "sit"]

    # create hash to store found words and word counts
    matches = Hash.new

    # iterate through every dictionary word
    dictionary.each do |word|
        if string.match?(/#{word}/)
            matches.store(word, string.downcase.scan(/#{word}/).size)
        end
    end
    
    return matches
end
     

                  
# Implement a method #substrings that takes a word as the first argument and then an array of valid 
# substrings (your dictionary) as the second argument. It should return a hash listing each 
# substring (case insensitive) that was found in the original string and how many times it was found.

def substring(string, dic)
    hash = {}
    
    dic.each {|d|
        count = string.downcase.scan(d).length
        if count != 0
            hash[d] = count
        end
    }

    hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substring("Howdy partner, sit down! How's it going?", dictionary)
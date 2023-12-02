# Implement a method #substrings that takes a word as the first argument and then an array of valid 
# substrings (your dictionary) as the second argument. It should return a hash listing each 
# substring (case insensitive) that was found in the original string and how many times it was found.

def substring(string, dic)
    # creamos un hash vacio donde se guardaran las palabras encontradas
    hash = {}
    
    # para cada palabra del diccionario
    dic.each {|d|
        # string es la frase entera introducida, y scan devuelve un array de palabras encotradas
        # asi que con length nos dice el numero de palabras encontradas
        count = string.downcase.scan(d).length
        # condicional para que no se guarden las palabras que no coincidan
        if count != 0
            # hash tiene simbolo y valor, el simbolo es la palabra (d) y valor es el numero de ocurrencias. 
            hash[d] = count
        end
    }

    hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substring("Howdy partner, sit down! How's it going?", dictionary)
# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
#It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

def stock_picker(array)
  # Implement a method #substrings that takes a word as the first argument and then an array of valid 
# substrings (your dictionary) as the second argument. It should return a hash listing each 
# substring (case insensitive) that was found in the original string and how many times it was found.

    mayor_beneficio = 0
    mejores_dias = {}
    
    for i in 0...array.length
        for j in i + 1...array.length
          if i < j
            profit = array[j] - array[i]
            if profit > mayor_beneficio
                mayor_beneficio = profit
                mejores_dias[:beneficio] = [i, j]
            end
          end
        end
    end   
    mejores_dias
end

puts stock_picker([170, 3, 6, 9, 15, 8, 6, 1, 10])
# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
#It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

def stock_picker(array)
    # declaramos una variable para llevar la cuenta del mayor beneficio y otra para guardar los dias y su beneficio {beneficio: [diaX, diaY]}
    mayor_beneficio = 0
    mejores_dias = {}

    # este bucle se posiciona en el primer valor del array
    for i in 0...array.length
        # este bucle coge el valor del array y lo compara con los demas
        for j in i + 1...array.length
          # calculamos el beneficio sólo si i es menor que j porque si es mayor no se puede hacer la compra (i = 20, j = 12: lógicamente no se haria la compra porque estarias perdiendo dinero)
          if i < j
            profit = array[j] - array[i]
            # si el recien calculado beneficio es mayor que el mayor del hash lo incluimos
            if profit > mayor_beneficio
                mayor_beneficio = profit
                mejores_dias[:beneficio] = [i, j]
            end
          end
        end
    end
    
    puts mejores_dias

end

stock_picker([170, 3, 6, 9, 15, 8, 6, 1, 10])
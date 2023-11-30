def cesar_cipher(string, shift)

    palabra_convertida = []

    # divido el string en un array, y para cada letra del array...
    string.each_char do |letra|

        # compruebo la letra, si no es una letra es que es un simbolo (?, ¡, espacio...)
        if letra.between?("A", "Z") || letra.between?("a","z")

            # el numero de movimientos que tengo que hacer, letra.next devuelve la siguiente letra del abecedario
            shift.times do
                letra = letra.next
            end
    
            # si la letra es z, .next devuelve [ab], por lo que nos quedamos sólo con el último caracter, si no la letra no ha dado la vuelta al abc
            letra.length > 1 ? palabra_convertida.push(letra[-1]) : palabra_convertida.push(letra)
        else
            # si la letra es un simbolo no lo convierto
            palabra_convertida.push(letra)
        end
    end

    return palabra_convertida.join("")

end

print "Introduce la frase que quieras convertir: "
input = gets.chomp

print "¿Qué número quieres utilizar para el cifrado?: "
shift_factor = gets.chomp.to_i

while shift_factor == 0
    print "Introduce un número porfavor. ¿Qué número quieres utilizar para el cifrado?: "
    shift_factor = gets.chomp.to_i
end

puts "\nResultado: #{cesar_cipher(input, shift_factor)}"

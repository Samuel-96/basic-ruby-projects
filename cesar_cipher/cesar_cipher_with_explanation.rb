# Implement a caesar cipher that takes in a string and the shift factor and then outputs the 
# modified string:
# caesar_cipher("What a string!", 5) => "Bmfy f xywnsl!"

def cesar_cipher(string, shift)

    palabra_convertida = []

    # each_char itera sobre cada letra del array
    string.each_char do |letra|
        
        # compruebo la letra, si no es una letra es que es un simbolo (?, ¡, espacio...)
        if letra.between?("A", "Z") || letra.between?("a","z")

            # el numero de movimientos que tengo que hacer, letra.next devuelve la siguiente letra del abecedario
            shift.times do
                # esta variable letra no es la iteradora del array
                letra = letra.next
            end

            # si la letra es z, .next devuelve [ab], por lo que nos quedamos sólo con el penúltimo caracter
            # si next no devuelve un array con más de un caracter es que la letra no ha dado la vuelta al abc asi que la guardamos con push
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

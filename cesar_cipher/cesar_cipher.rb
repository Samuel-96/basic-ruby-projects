# Implement a method #substrings that takes a word as the first argument and then an array of valid 
# substrings (your dictionary) as the second argument. It should return a hash listing each 
# substring (case insensitive) that was found in the original string and how many times it was found.

def cesar_cipher(string, shift)
    palabra_convertida = []

    string.each_char do |letra|

        if letra.between?("A", "Z") || letra.between?("a","z")

            shift.times do
                letra = letra.next
            end

            letra.length > 1 ? palabra_convertida.push(letra[-1]) : palabra_convertida.push(letra)
        else
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
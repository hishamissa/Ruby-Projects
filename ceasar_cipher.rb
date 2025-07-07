def ceasar_cipher(string, shift)
    # Converting the string into ASCII (eqv. to 'string.each_byte.to_a')
    s = string.bytes 

    # Updating each ASCII value based on the provided shift
    caesar = s.each_with_index do |x, index|
        # Checks if the ASCII value is a char/letter then applies the shift
        if x.between?(97, 122) || x.between?(65, 90)
            # Incrementally increase each ASCII value based on the given shift
            shift.times do
                # While incrementing, if the shift reaches either 'Z' or 'z', loop back to the start of the alpabet
                if s[index] == 122 || s[index] == 90
                    s[index] -= 26
                end
                s[index] += 1
            end
        end
    end
  
    # Converting all ASCII values back into characters
    chars = caesar.map { |y| y.chr}

    # Joining the array back into a string
    print chars.join('')

end

print "Encrypt your message with a Caesar Cipher!\nEnter your secret message: "
msg = gets.chomp()
print "Now enter the shift to use for your cipher: "
shift = gets.chomp()

ceasar_cipher(msg, shift.to_i)
def caesar_cipher(text, key)
    if key > 26 || key < 1
        puts "Key must be between 1 and 26"
        return ""
    end
    encrypted_text = String.new

    text.each_char do |char|
        if char.match(/[a-z]/) && char.ord + key > 122
            encrypted_text << (char.ord - (26 - key)).chr
        elsif char.match(/[A-Z]/) && char.ord + key > 90
            encrypted_text << (char.ord - (26 - key)).chr
        elsif char.match(/[^A-Za-z]/)
            encrypted_text << char
        else
            encrypted_text << (char.ord + key).chr
        end
    end
    encrypted_text
end

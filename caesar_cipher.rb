class CaesarCipher
  def translate(message, shift, result = '')
    message.each_char do |char|
      # find if the char is lowercase or uppercase
      base = char.ord < 91 ? 65 : 97
      if char.ord.between?(65, 90) || char.ord.between?(97, 122) 
        rotation = (((char.ord - base) + shift) % 26) + base
        result += rotation.chr
      else
        # Keeps spaces & punctuation
        result += char
      end
    end
    result
  end
end

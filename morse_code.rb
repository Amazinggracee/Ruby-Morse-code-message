class MorseDecoder
  MORSE_CODE = {
    '.-'   => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..'  => 'D',
    '.'    => 'E',
    '..-.' => 'F',
    '--.'  => 'G',
    '....' => 'H',
    '..'   => 'I',
    '.---' => 'J',
    '-.-'  => 'K',
    '.-..' => 'L',
    '--'   => 'M',
    '-.'   => 'N',
    '---'  => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.'  => 'R',
    '...'  => 'S',
    '-'    => 'T',
    '..-'  => 'U',
    '...-' => 'V',
    '.--'  => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z',
    '.----' => '1',
    '..---' => '2',
    '...--' => '3',
    '....-' => '4',
    '.....' => '5',
    '-....' => '6',
    '--...' => '7',
    '---..' => '8',
    '----.' => '9',
    '-----' => '0'
  }

  def self.decode_char(morse)
    MORSE_CODE[morse]
  end

  def self.decode_word(morse_word)
    morse_chars = morse_word.split(' ')
    decoded_word = morse_chars.map { |morse| decode_char(morse) }
    decoded_word.join('')
  end

  def self.decode(message)
    morse_words = message.split('   ')
    decoded_message = morse_words.map { |morse_word| decode_word(morse_word) }
    decoded_message.join(' ')
  end
end

message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = MorseDecoder.decode(message)
puts decoded_message

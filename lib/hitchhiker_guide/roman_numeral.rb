module HitchhikerGuide
  class RomanNumeral
    SYMBOLS = {
      'I' => 1,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000
    }.freeze

    class << self
      def to_arabic roman_numeral
        roman_numeral.split('').each_with_index.inject(0) do |sum, (symbol, index)|
          current_value = value_of symbol
          next_symbol = roman_numeral[index + 1]
          next_value = value_of(next_symbol)
          current_value *= -1 if current_value < next_value
          sum + current_value
        end
      end

      private
      def value_of symbol
        return 0 unless symbol
        raise HitchhikerGuide::Error::UnknownSymbol.new(symbol) unless SYMBOLS[symbol]
        SYMBOLS[symbol].to_i
      end
    end
  end
end

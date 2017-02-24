describe HitchhikerGuide::RomanNumeral do
  describe '.to_arabic' do
    subject { HitchhikerGuide::RomanNumeral.to_arabic(roman_numeral) }

    context 'with a valid roman numeral' do
      let(:roman_numeral) { 'MCMXCIX' }

      it 'converts roman to arabic numeral' do
        is_expected.to be 1999
      end
    end

    context 'with an invalid roman numeral' do
      let(:roman_numeral) { 'MACX' }

      it 'raises unknown symbol error' do
        expect{subject}.to raise_error HitchhikerGuide::Error::UnknownSymbol
      end
    end
  end
end

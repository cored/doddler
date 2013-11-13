require 'spec_helper'

describe DeAldiFernbus::Cities,'.value_for' do 

  context 'lookup the correct id for each city' do 

    it 'returns 37 with Berlin FH T' do 
      expect(
        described_class.value_for('Berlin FH T') 
      ).to eql(37)
    end

    it 'returns 62 with Berlin Ost Bf' do 
      expect(
        described_class.value_for('Berlin Ost Bf')
      ).to eql(62)
    end

    it 'returns 40 with Dresden Hbf' do 
      expect(
        described_class.value_for('Dresden Hbf')
      ).to eql(40)
    end
  end

end

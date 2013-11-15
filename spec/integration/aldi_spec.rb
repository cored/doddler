require 'spec_helper'

describe DeAldiFernbus,".find" do 

  it 'return an array of segments hashes' do 
    from = DeAldiFernbus::Cities.value_for("Berlin FH T")
    to = DeAldiFernbus::Cities.value_for("Dresden NST")
    departure_at = DateTime.civil(2013,12,1)
    response = DeAldiFernbus.find(from, to, departure_at)
    expect(response.size).to eql(1)
  end

end

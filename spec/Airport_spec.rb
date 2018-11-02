require 'Airport.rb'
require 'Plane.rb'

describe Airport do
	let(:plane) {plane = Plane.new}
  let(:airport) {airport = Airport.new}

  it {is_expected.to respond_to(:land)}

  it 'adds a plane to the hanger set when #land is called' do
    airport.land(plane)
    expect(airport.hangar.length).to eq 1
  end
end

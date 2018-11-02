require 'Airport.rb'
require 'Plane.rb'

describe Airport do
	let(:plane) {plane = Plane.new}
  let(:airport) {airport = Airport.new}

  it {is_expected.to respond_to(:land)}

  it 'adds a plane to the hanger array when #land is called' do
    airport.land(plane)
    expect(airport.hangar.length).to eq 1
  end

  it "should check that a plane has taken off" do
    airport.land(plane)
    airport.take_off(0)
    expect(airport.hangar.length).to eq 0
  end
end

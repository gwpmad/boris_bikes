require 'docking_station'
#require 'bike'
#station = DockingStation.new

describe DockingStation do
	it { is_expected.to respond_to(:release_bike) }

  it 'releases a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
	end

	it 'docks an object of the Bike class as an instance variable' do
		docked_bike = Bike.new
		subject.dock(docked_bike)
		expect(subject.bikes).to include docked_bike
	end
end

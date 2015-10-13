require 'docking_station'
#require 'bike'
#station = DockingStation.new

describe DockingStation do
	it { is_expected.to respond_to(:release_bike) }

   it 'releases a working bike' do
     bike = Bike.new
     subject.dock(bike)
     bike = subject.release_bike
     expect(bike).to be_working
	 end

  it { is_expected.to respond_to(:dock).with(1).argument }

	it 'docks an object of the Bike class as an instance variable' do
		docked_bike = Bike.new
		subject.dock(docked_bike)
		expect(subject.bike).to eq docked_bike
	end

  it 'throws and error when #release_bike when #subject.bikes is nil' do
    expect {subject.release_bike}.to raise_error(StandardError)
  end
end

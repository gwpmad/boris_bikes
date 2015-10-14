require 'docking_station'

describe DockingStation do
	it { is_expected.to respond_to(:release_bike) }

	describe '#initialize' do
		it 'sets the capacity to DEFAULT_CAPACITY if no argument is passed' do
			expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
		end
		it 'sets the capcity to the specified argument when passed' do
			station = DockingStation.new(30)
			expect(station.capacity).to eq 30
		end

	end

  describe '#release_bike' do
		it 'releases a bike if there is at least one docked' do # test when docking station has a bike
				subject.dock(Bike.new)
				last_bike = subject.bikes.last
				expect(subject.release_bike).to eq last_bike
	    end

			it 'reduces the number of bikes by one' do
				2.times {subject.dock(Bike.new)}
				expect{subject.release_bike}.to change {subject.bikes.length}.by(-1)
			end
	    it 'throws an error if docking station is empty' do #the default subject should have no bikes, so this should error.
	      	expect {subject.release_bike}.to raise_error(StandardError)
	    end
	end

  # obsolete? it { is_expected.to respond_to(:dock).with(1).argument }

  describe '#dock' do
    it 'docks a bike and returns the bike unless the docking station is full' do
				subject.capacity.times {subject.dock(Bike.new)}
				expect {subject.dock(Bike.new)}.to raise_error(StandardError)
			end
			it 'increases the number of bikes by one' do
				expect {subject.dock(Bike.new)}.to change {subject.bikes.length}.by(1)
			end
  end

end

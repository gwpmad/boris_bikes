require 'docking_station'

describe DockingStation do
	it { is_expected.to respond_to(:release_bike) }

  describe '#release_bike' do
		it 'releases a bike if there is at least one docked' do # test when docking station has a bike
				subject.dock(Bike.new)
				last_bike = subject.bikes.last
				expect(subject.release_bike).to eq last_bike
	    end

			it 'reduces the number of bikes by one' do
				2.times {subject.dock(Bike.new)}
				#before_release = @bikes.length
				subject.release_bike
				expect(subject.bikes.length).to eq 1
			end
	    it 'throws an error if docking station is empty' do #the default subject should have no bikes, so this should error.
	      	expect {subject.release_bike}.to raise_error(StandardError)
	    end
	end

  # obsolete? it { is_expected.to respond_to(:dock).with(1).argument }

  describe '#dock' do
    it 'docks a bike and returns the bike unless the docking station is full' do
				20.times {subject.dock(Bike.new)}
				expect {subject.dock(Bike.new)}.to raise_error(StandardError)
			end
			it 'increases the number of bikes by one' do
				before_dock = subject.bikes.length
				subject.dock(Bike.new)
				expect(subject.bikes.length).to eq before_dock + 1
			end
  end

end

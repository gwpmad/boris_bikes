require 'docking_station'

#station = DockingStation.new

describe DockingStation do 
	it { is_expected.to respond_to(:release_bike) }
end

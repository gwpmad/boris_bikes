require 'docking_station'

describe DockingStation do
	it { is_expected.to respond_to(:release_bike) }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'throws and error docking station is empty' do
      expect {subject.release_bike}.to raise_error(StandardError)
    end
	end

  it { is_expected.to respond_to(:dock).with(1).argument }

  describe '#dock' do
    it 'docks a bike and returns the bike' do
      docked_bike = Bike.new
      subject.dock(docked_bike)
      expect(subject.bike).to eq docked_bike
    end
		it 'raises an exception when there is already a bike docked' do
			subject.dock(Bike.new)
			expect {subject.dock(Bike.new)}.to raise_error("Docking station is full")
		end
  end

end

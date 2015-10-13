require_relative './bike'

class DockingStation
attr_reader :bikes

	def release_bike
    Bike.new
	end

	def dock(docked_bike)
		@bike = bike
	end

end

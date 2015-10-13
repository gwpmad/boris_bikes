require_relative './bike'

class DockingStation
attr_reader :bike

	def release_bike
    raise StandardError, 'Docking Station is empty' unless @bike
    @bike
	end

	def dock(docked_bike)
		@bike = docked_bike
	end

end

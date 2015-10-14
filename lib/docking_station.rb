require_relative './bike'

class DockingStation
attr_reader :bikes

	def initialize
		@bikes = []
	end

	def release_bike
		if @bikes.length == 0
    	raise StandardError, 'Docking Station is empty'
		else
			@bikes.pop
		end
	end

	def dock(docked_bike)
		if @bikes.length == 20
			raise StandardError, 'Docking station is full'
		else
			@bikes << docked_bike
		end
	end

end

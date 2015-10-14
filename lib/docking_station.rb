require_relative './bike'  # => true

class DockingStation
attr_reader :bikes    # => nil

	def initialize
		@bikes = []
	end

	def release_bike
	@bikes.length == 0 ? (raise StandardError) : (@bikes.pop)
	end

	def dock(docked_bike)
	@bikes.length >= 20 ? (raise StandardError) : (@bikes << docked_bike)
	end

end

require_relative './bike'  # => true

class DockingStation
attr_reader :bikes    # => nil

	def initialize
		@bikes = []
	end

	def release_bike
	raise StandardError if empty?
	@bikes.pop
	end

	def dock(docked_bike)
	raise StandardError if full?
	@bikes << docked_bike
	end

	private               # => DockingStation
	def full?
		@bikes.length >= 20
	end

	def empty?
		@bikes.empty?
	end

end

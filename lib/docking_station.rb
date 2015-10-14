require_relative './bike'  # => true

class DockingStation
attr_reader :bikes    # => nil
DEFAULT_CAPACITY = 20

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
		@bikes.length >= DEFAULT_CAPACITY
	end

	def empty?
		@bikes.empty?
	end

end

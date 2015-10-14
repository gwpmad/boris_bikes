require_relative './bike'  # => true

class DockingStation

attr_accessor :bikes, :capacity    # => nil

DEFAULT_CAPACITY = 20

	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
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
		@bikes.length >= @capacity
	end

	def empty?
		@bikes.empty?
	end

end

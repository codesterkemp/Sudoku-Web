#spaces.rb
class Space
	def initialize(location, value , p_values = [1,2,3,4,5,6,7,8,9])
		@location = location # should be a single num starting with 1 in the upper left corner and ending with 81 in the bottom right corner
		@value = value
		@p_values = p_values
	end

	def row(rows = 9)
		@row = ((@location-1)/rows)+1
	end

	def col(cols = 9)
		@col = @location%cols
		if @col == 0
			@col = 9
		end
		@col
	end

	def zone
		row = self.row
		col = self.col
		@zone = (3*((row-1)/3)) + (((col-1)/3)+1 )
	end

end


my_space = Space.new(69,1)
my_space.row
my_space.col
puts my_space.zone
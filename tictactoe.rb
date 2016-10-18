# class TicTacToe()
# 	def border()
# 		puts ("___|___|___")
# 	end 

# end

def border()
		a = ("___|___|___")
		b = ("   |   |   ")

		2.times {puts a}
		puts b
end 

border()





#class TicTactoe

	# def initialize
 #  		@spaces = Array.new(9)
	# end

def to_s
  		output = []
    	0.upto(8) do |position|
      		puts output << " #{spaces[position] || position} "
      		case position % 3
      			when 0, 1 then output << "|"
      			when 2 then output << "\n-----------\n" unless position == 8
      			puts output
    		end
  		end
  	puts output
end

puts to_s()

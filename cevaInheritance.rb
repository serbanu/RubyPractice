module OddVsEven
	def isEven(input)
		if input % 2 == 0
			return true
		else
			return false
		end
	end
end
class Car
	def initialize(noWheels, color)
		@noWheels = noWheels
		@color = color
	end
	def getNoWheels
		puts @noWheels
	end
	def getColor
		puts @color
	end
end

class Volvo < Car
	include OddVsEven
	def initialize(noWheels, color, name)
		super(noWheels, color)
		@name = name
	end
	def getColor
		return @color
	end
	def setAbs(abs)
		@abs = abs
	end
	def getAbs
		puts @abs
	end
	def so?
		return isEven(@noWheels)
	end
end

volvo = Volvo.new(3, "Blue", "Volvoa")
puts volvo.so?


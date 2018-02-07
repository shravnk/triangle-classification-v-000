class Triangle
  # write code here
  attr_accessor sides

  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3]
  end

  def valid?
    valid = true 
    valid = false if @sides.any?{|side| side <= 0}
    all_sides = @sides.inject{ |sum,x| sum + x }
    valid = false if @sides.any?{|side| all_sides - side < side}
  def kind
    if @sides.uniq.count == 1
      puts "equilateral"
    end
  end

end

class TriangleError < StandardError
 # triangle error code
end

Triangle.new(10,10,10).kind

class Triangle
  # write code here
  attr_accessor :s1, :s2, :s3

  def initialize(s1:, s2:, s3:)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if [@s1, @s2, @s3].uniq.count == 1
      puts "equilateral"
    end
  end

end

class TriangleError < StandardError
 # triangle error code
end

Triangle.new(10,10,10).kind

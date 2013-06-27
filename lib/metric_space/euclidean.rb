module MetricSpace
  # Euclidean distance or Euclidean metric is the "ordinary" distance
  # between two points that one would measure with a ruler,
  # and is given by the Pythagorean formula.
  class Euclidean < Metric
    # Distance between two points in Euclidean metrics
    #
    #   point1 = {a: 2.5, b: 5.0, c: 1.0}
    #   point2 = {a:-1.5, b: 1.5, c: 0.5}
    #   self.distance(point1, point2) #=> 5.338539126015656
    #
    #   point1 = {b: 1.0, c: 2.5, d: 5.0}
    #   point2 = {a:-1.5, b: 3.0, c:-1.5}
    #   self.distance(point1, point2) #=> 6.87386354243376
    def self.distance(one, two)
      array, result = (one.keys + two.keys).uniq, 0.0
      array.each do |index|
        result += difference(one, two, index)**2
      end
      Math.sqrt(result)
    end
  end
end
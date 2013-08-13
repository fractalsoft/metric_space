module MetricSpace
  # The British Rail metric (also called the Post Office metric or
  # the SNCF metric).
  class BritishRail
    # Distance between two points in British Rail metrics
    #
    #   point1 = {a:2.5, b:5.0, c:1.0}
    #   point2 = {a:-1.5, b:1.5, c:0.5}
    #   self.distance(point1, point2) #=> 7.85835781757061
    #
    #   point1 = {b:1.0, c:2.5, d:5.0}
    #   point2 = {a:-1.5, b:3.0, c:-1.5}
    #   self.distance(point1, point2) #=> 9.353142959975042
    def self.distance(one, two)
      first, second = normalize(one), normalize(two)
      if first == second
        Euclidean.distance(one, two)
      else
        Euclidean.distance(one, {}) + Euclidean.distance(two, {})
      end
    end

    # Normalize point (all coefficients scaled to the largest one)
    #
    #   self.normalize({a:2.0, b:1.0, c:0.5}) #=> {a:1.0, b:0.5, c:0.25}
    #   self.normalize({a:-2.0, b:4.0, c:-1.0}) #=> {a:-0.5, b:1.0, c:-0.25}
    def self.normalize(point)
      hash, max = point.dup, point.values.map(&:abs).max
      hash.each_pair do |index, value|
        hash[index] = value / max
      end
      hash
    end
  end
end
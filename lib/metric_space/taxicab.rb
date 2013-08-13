module MetricSpace
  # The name relates to the distance a taxi has to drive in
  # a rectangular street grid to get from the origin to the point x.
  class Taxicab
    # Distance between two points in taxicab metrics
    #
    #   self.distance({a:2.5, b:5.0, c:1.0 }, {a:-1.5, b:1.5, c:0.5}) #=> 8.0
    #   self.distance({b:0.3, c:0.5, d:0.2 }, {a:-0.5, b:0.4, c:-0.4}) #=> 3.0
    def self.distance(one, two)
      array, result = (one.keys + two.keys).uniq, 0.0
      array.each do |item|
        result += (
          (one.has_key?(item) ? one[item] : 0.0) -
          (two.has_key?(item) ? two[item] : 0.0)
        ).abs
      end
      result
    end
  end
end
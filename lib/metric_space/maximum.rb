module MetricSpace
  # Maximum metric, Chebyshev distance, also known as chessboard distance,
  # since in the game of chess the minimum number of moves needed by a king
  # to go from one square on a chessboard to another equals the Chebyshev
  # distance between the centers of the squares
  class Maximum < Metric
    # Distance between two points in Maximum (Chebyshev) metrics
    #
    #   self.distance({a:2.5, b:5.0, c:1.0}, {a:-1.5, b:1.5, c:0.5}) #=> 4.0
    #   self.distance({a:-1.5, b:3.0, c:-1.5}, {b:1.0, c:2.5, d:5.0}) #=> 5.0
    def self.distance(one, two)
      array, max = (one.keys + two.keys).uniq, 0.0
      array.each do |index|
        value = difference(one, two, index)
        max = value if value > max
      end
      max
    end
  end
end
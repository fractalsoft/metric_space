module MetricSpace
  # Difference between two values in one dimension
  class Metric
    protected
      # Count difference between two points in selected dimension
      def self.difference(one, two, index)
        ((one[index] || 0.0) - (two[index] || 0.0)).abs
      end
  end
end

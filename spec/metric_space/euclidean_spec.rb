require 'spec_helper'

describe MetricSpace::Euclidean do
  subject { MetricSpace::Euclidean }

  [
    {
      point1: { a: 7.25, b: 8.5 },
      point2: { a: 4.25, b: 4.5 },
      distance: 5.0
    },
    {
      point1: { a: 0.5, c: 0.5 },
      point2: { b: 0.4, c: 0.8 },
      distance: 0.5**0.5
    }
  ].each do |example|
    point1, point2, distance = example.values
    it "is #{distance} between #{point1} and #{point2}" do
      expect(
        subject.distance(point1, point2).round(5)
      ).to eq(distance.round(5))
    end
  end
end
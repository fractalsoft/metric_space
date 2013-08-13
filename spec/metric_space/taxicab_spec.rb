require 'spec_helper'

describe MetricSpace::Taxicab do
  subject { MetricSpace::Taxicab }

  [
    {
      point1: { a: -0.25, b: 3.25, c: 0.8 },
      point2: { a: 0.8, b: 1.25, c: 0.5 },
      distance: 3.35
    },
    {
      point1: { a: 0.8, c: 0.5 },
      point2: { b: 0.3, c: 1 },
      distance: 1.6
    }
  ].each do |example|
    point1, point2, distance = example.values
    it "is #{distance} between #{point1} and #{point2}" do
      subject.distance(point1, point2).round(5).should eq(distance)
    end
  end
end
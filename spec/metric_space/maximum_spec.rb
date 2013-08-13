require 'spec_helper'

describe MetricSpace::Maximum do
  subject { MetricSpace::Maximum }

  [
    {
      point1: { a: 7.25, b: 8.5, c: 2.0 },
      point2: { a: 4.25, b: 4.5, c: 7.0 },
      distance: 5
    },
    {
      point1: { a: 0.3, c: 0.5 },
      point2: { b: 0.8, c: 0.9 },
      distance: 0.8
    }
  ].each do |example|
    point1, point2, distance = example.values
    it "is #{distance} between #{point1} and #{point2}" do
      subject.distance(point1, point2).round(5).should eq(distance)
    end
  end
end
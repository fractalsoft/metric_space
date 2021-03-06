require 'spec_helper'

describe MetricSpace::BritishRail do
  subject { MetricSpace::BritishRail }

  describe '.distance' do
    [
      {
        point1: { a: 3.0, b: 4.0 },
        point2: { a: 8.0, b: 6.0 },
        distance: 15.0
      },
      {
        point1: { a: 3.0, c: 4.0 },
        point2: { a: 8.0, b: 6.0 },
        distance: 15.0
      },
      {
        point1: { a: 4.0, b: 3.0 },
        point2: { a: 8.0, b: 6.0 },
        distance: 5.0
      },
      {
        point1: { a: 4.0, b: -3.0 },
        point2: { a: -8.0, b: 6.0 },
        distance: 15.0
      },
      {
        point1: { a: -1.5, b: 1.5 },
        point2: { a: 1.5, b: -1.5 },
        distance: 3 * (2.0**0.5)
      },
    ].each do |example|
      point1, point2, distance = example.values
      it "is #{distance} between #{point1} and #{point2}" do
        expect(
          subject.distance(point1, point2).round(5)
        ).to eq(distance.round(5))
      end
    end
  end

  describe '.normalize' do
    {
      { a: 2.0, b: 1.0, c: 0.5 } => { a: 1.0, b: 0.5, c: 0.25 },
      { a: -2.0, b: 4.0, c: -1.0 } => { a: -0.5, b: 1.0, c: -0.25 }
    }.each_pair do |input, output|
      it "should return #{output} for #{input}" do
        expect(subject.normalize(input)).to eq(output)
      end
    end
  end
end

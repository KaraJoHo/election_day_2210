require 'rspec'
require './lib/candidate'
require './lib/race'

RSpec.describe Race do
  it 'is an object of the Race class and has an office' do
    race = Race.new("Texas Governor")

    expect(race).to be_a(Race)
    expect(race.office).to eq("Texas Governor")
  end

  describe '#candidates' do
    it 'is an array of candidate objects' do
      race = Race.new("Texas Governor")

      expect(race.candidates).to eq([])
    end
  end
end

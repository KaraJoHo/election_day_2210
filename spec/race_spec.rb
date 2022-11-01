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

  describe '#register_candidate!' do
    it 'takes a has of a candidate object and returns the instance of Candidate' do
      race = Race.new("Texas Governor")
      candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})

      expect(candidate1).to be_a(Candidate)
      expect(candidate1.name).to eq("Diana D")
      expect(candidate1.party).to eq(:democrat)
    end
  end
end

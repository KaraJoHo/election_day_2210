require 'rspec'
require './lib/candidate'
require './lib/race'
require './lib/election'

RSpec.describe Election do
  it 'is an eklection object with a year variable and races variable' do
    election = Election.new('2022')

    expect(election.year).to eq("2022")
    expect(election.races).to eq([])
  end

  describe '#add_race' do
    it 'adds race objects to the races array' do
      election = Election.new('2022')
      race1 = Race.new("Virginia District 4 Representative")
      race2 = Race.new("Texas Governor")
      election.add_race(race1)
      election.add_race(race2)

      expect(election.races).to eq([race1, race2])

    end
  end
end

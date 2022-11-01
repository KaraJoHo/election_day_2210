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
end

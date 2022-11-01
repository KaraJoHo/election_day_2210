require 'rspec'
require './lib/candidate'

RSpec.describe Candidate do
  it 'is an object of the Candidate class' do
    diana = Candidate.new({name: "Diana D", party: :democrat})

    expect(diana).to be_a(Candidate)
  end
  it 'has a name and a party' do
    diana = Candidate.new({name: "Diana D", party: :democrat})

    expect(diana.name).to eq("Diana D")
    expect(diana.party).to eq(:democrat)
  end

  describe '#votes' do
    it 'logs the number of votes the candidate recieves' do
      diana = Candidate.new({name: "Diana D", party: :democrat})

      expect(diana.votes).to eq(0)
    end
  end

  describe '#vote_for!' do
    it 'adds the votes for the candidate to the votes method' do
      diana = Candidate.new({name: "Diana D", party: :democrat})
      diana.votes_for!
      diana.votes_for!
      diana.votes_for!

      expect(diana.votes).to eq(3)

      diana.votes_for!

      expect(diana.votes).to eq(4)
    end
  end
end

class Candidate
  attr_reader :name, :party, :num_of_votes

  def initialize(candidate_info)
    @name = candidate_info[:name]
    @party = candidate_info[:party]
    @num_of_votes = []
  end

  def votes
    num_of_votes.count
  end
end

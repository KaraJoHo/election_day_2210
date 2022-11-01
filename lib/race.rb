class Race
  attr_reader :office, :candidates

  def initialize(office)
    @office = office
    @candidates = []
  end

  def register_candidate!(candidate_object)
    @candidates << candidate_object
  end
end

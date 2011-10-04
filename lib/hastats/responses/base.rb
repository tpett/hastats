class HAStats::Responses::Base

  attr_accessor :raw, :parsed

  def initialize(raw)
    self.raw = raw
    parse
  end

  # The base class does no parsing
  def parse
    self.parsed = self.raw
  end

  def to_json
    JSON.dump(self.parsed)
  end

end


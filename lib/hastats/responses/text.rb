class HAStats::Responses::Text < HAStats::Responses::Base

  def parse
    self.parsed = {}
    self.raw.split("\n").each do |line|
      name, value = line.split(/:/, 2)
      self.parsed[name.strip.downcase.to_sym] = value.strip if name && value
    end
  end

end


class HAStats::Responses::BlankResult < HAStats::Responses::Base

  def parse
    if self.raw.strip.empty?
      self.parsed = { :success => true }
    else
      self.parsed = { :success => false, :message => self.raw.strip }
    end
  end

end

require 'csv'

class HAStats::Responses::CSV < HAStats::Responses::Base

  def parse
    self.parsed = []
    header = nil
    self.raw.each do |row|
      row = CSV.parse(row.gsub(/#*\s*/, '').strip).first
      if row && header
        result = {}
        header.each_index do |i|
          result[header[i]] = row[i]
        end
        self.parsed << result
      elsif row
        header = row
      end
    end
    self.parsed
  end

end


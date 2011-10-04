class HAStats::Actions::Stat < HAStats::Actions::Base

  def response
    HAStats::Responses::CSV
  end

  def command
    "show stat"
  end

end

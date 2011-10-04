class HAStats::Actions::Info < HAStats::Actions::Base

  def response
    HAStats::Responses::Text
  end

  def command
    "show info"
  end

end

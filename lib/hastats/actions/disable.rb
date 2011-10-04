class HAStats::Actions::Disable < HAStats::Actions::Base

  def response
    HAStats::Responses::BlankResult
  end

  def command(backend, server)
    "disable server #{backend}/#{server}"
  end

end


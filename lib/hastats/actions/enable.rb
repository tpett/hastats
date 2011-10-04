class HAStats::Actions::Enable < HAStats::Actions::Base

  def response
    HAStats::Responses::BlankResult
  end

  def command(backend, server)
    "enable server #{backend}/#{server}"
  end

end


class HAStats::Actions::Base

  attr_accessor :socket, :options

  def initialize(socket, options={})
    self.socket = socket.is_a?(HAStats::Socket) ? socket : HAStats::Socket.new(socket)
    self.options = options
  end

  def run(*args)
    response.new socket.run(command(*args))
  end

  def response
    HAStats::Responses::Base
  end

  def command(*args)
    raise NotImplementedError
  end

end

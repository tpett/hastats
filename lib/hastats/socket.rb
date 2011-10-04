class HAStats::Socket

  attr_accessor :socket_addr

  def initialize(socket_addr)
    @socket_addr = socket_addr
  end

  def socket
    @socket ||= UNIXSocket.new(socket_addr)
  end

  def reset
    @socket = nil
  end

  def run(cmd)
    reset
    socket.puts(cmd)
    result = ""
    while out = socket.gets
      result += out
    end
    result
  end

end

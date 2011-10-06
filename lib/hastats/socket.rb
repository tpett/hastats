class HAStats::Socket

  attr_accessor :socket_addr

  def initialize(socket_addr)
    @socket_addr = socket_addr
  end

  def run(cmd)
    result = ""
    UNIXSocket.open(socket_addr) do |socket|
      socket.write("#{cmd};")
      while out = socket.gets
        result += out
      end
    end
    result
  end

end

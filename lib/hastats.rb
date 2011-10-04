require 'socket'
require 'json'

require "hastats/version"

module HAStats
  autoload :Socket, 'hastats/socket'
  autoload :Actions, 'hastats/actions'
  autoload :Responses, 'hastats/responses'
end


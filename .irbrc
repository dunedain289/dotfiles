require 'pp'
require 'rubygems'

require 'wirble'
Wirble.init
Wirble.colorize

IRB.conf[:AUTO_INDENT] = true

require 'ap'

def nrs(staging = true)
  require 'mysql'
  ENV["DB"] = "staging" if staging
  require 'lib/new_reg'
  include NewReg
end

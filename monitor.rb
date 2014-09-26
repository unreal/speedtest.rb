require 'rubygems'
require 'speedtest/speedtest'

@time = Time.now.strftime("%Y-%m-%d %H:%M")

x = Speedtest::SpeedTest.new(ARGV)
results = x.run

open('/Users/jay/dev/speedtest.rb/results.csv', 'a') { |f|
  f.puts "#{@time},#{results[:server]},#{results[:latency]},#{results[:downRate]},#{results[:upRate]}"
}

#!/usr/bin/ruby
#An exploration and test of hashes and ruby hash methods
#http://ruby-doc.org/core-2.0/Hash.html
#tgw 16052013

#example of a hash declaration
components = { "mobile undercarriage" => 1, "positioning turntable" => 2, "major manipulator" => 2, "minor manipulator" => 2 }

#access method 1:
puts "Components mobile undercarriage required: #{components["mobile undercarriage"]}"
puts "Components positioning turntable required: #{components["positioning turntable"]}"
puts "Components major manipulator required: #{components["major manipulator"]}"
puts "Components minor manipulator required: #{components["minor manipulator"]}"

#access method 2 (for reading out the hash keys):
puts " The hash keys: "
puts components.keys
puts " The hash values: "
puts components.values

#access methid 3:
components.each {|key, value| puts "#{key} is #{value}" }

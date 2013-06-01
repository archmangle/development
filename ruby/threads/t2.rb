#!/usr/bin/ruby

#Some rudimentary experiments with ruby threading
#traiano welcome 2013 June


def loop_de_loop (input)
	for i in 1..10
		puts  "#{input} : #{i}"
		sleep 2
	end
end


puts Thread.main  
puts ""  

a = "T1"
b = "T2"

t1 = Thread.new { loop_de_loop(a) }
t2 = Thread.new { loop_de_loop(b) }
t1.join
t2.join

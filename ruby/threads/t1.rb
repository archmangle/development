# p070thread.rb  
x = Thread.new { sleep 0.1; print "x\n"; print "y\n"; print "z\n" }  
a = Thread.new { print "a\n"; print "b\n"; sleep 0.2; print "c\n" }  

x.join # Let the threads finish before  
a.join # main thread exits... 

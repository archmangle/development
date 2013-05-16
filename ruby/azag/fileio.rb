#!/usr/bin/ruby
#Module to generate all the atoms that form the Game World
#Takes the atom data and inserts this into the GameDB "atoms" table
#The data in the atoms table is then used to instantiate the atom objects
#tgw 30/11/2012 
#1. obtain atom data from csv file
#2. Perform any necessary formatting and calculations of the values
#3. format as a sql statement
#4. insert into GameDB.atoms
#1. obtain atom data from csv file
#atomFile = File.new("atoms.dat","r")
#if atomFile
#        content = atomFile.sysread(200)
#        puts content
#else
#        puts "Unable to open file"
#end
#atomFile.close

#name of the data file containing 
#atoms data
debug = 2
atomFile = "atoms.dat"
atom_data = [] 

#read in the file and print out the contents
File.open(atomFile, "r").each_line do |line|
  line = line.strip
	if debug == 1
		puts "D: #{line}"
	end
	#push onto array, after converting the line to string
	atom_data.push line.to_s
end

if debug == 2
	#read out the lines from the array
	#because we have no faith
	atom_data.each do |l| 
		puts "L: #{l}"
	end
end

#2. Perform any necessary formatting and calculations of the values
#3. format as a sql statement
#4. insert into GameDB.atoms

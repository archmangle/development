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
atomFile = File.new("atoms.dat","r")
if atomFile
        content = atomFile.sysread(20)
        puts content
else
        puts "Unable to open file"
end
atomFile.close
#2. Perform any necessary formatting and calculations of the values
#3. format as a sql statement
#4. insert into GameDB.atoms

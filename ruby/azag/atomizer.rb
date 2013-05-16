#!/usr/bin/ruby
#A program to generate the atoms comprising the surface of the gamescape
#and dump it into a csv file
#Sample of the data line for each atom:
#0,0,0,0.1,25,30,'nw',1,0.5,0.5,0.5,'0,0,0','A0000000001','T0000000001','Sun 18 Mar 2012 22:46:42 SAST
#hlength int(32),breadth int(32),height int(32),temperature int(32),humidity int(32),wind_speed int(32),wind_direction int(32),barometric_pressure int(32),vulnerability int(32),opacity int(32),penetrability int(32),center int(32),atom_id int(32),tile_id int(32),date date
#Fields tobe created:
#hlength,breadth,height,temperature,humidity,wind_speed,wind_direction,barometric_pressure,vulnerability,opacity,penetrability,center,atom_id,tile_id,date
def gen_atmosphere
 #create pressure, temperature
end
def gen_dimensions
 #create length,breadth, height
end
def gen_wind
 #create wind direction and speed
end
def gen_atom_id
 #generate atom_id
end
def gen_vulnerability
 end
def gen_penetrability
end
def gen_opacity
end
def allocate_tile
 #place each atom in a predefined tile
end

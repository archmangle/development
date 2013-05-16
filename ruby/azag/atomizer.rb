#!/usr/bin/ruby
#A program to generate the atoms comprising the surface of the gamescape
#and dump it into a csv file
#Sample of the data line for each atom:
#0,0,0,0.1,25,30,'nw',1,0.5,0.5,0.5,'0,0,0','A0000000001','T0000000001','Sun 18 Mar 2012 22:46:42 SAST
#hlength int(32),breadth int(32),height int(32),temperature int(32),humidity int(32),wind_speed int(32),wind_direction int(32),barometric_pressure int(32),vulnerability int(32),opacity int(32),penetrability int(32),center int(32),atom_id int(32),tile_id int(32),date date
#Fields tobe created:
#hlength,breadth,height,temperature,humidity,wind_speed,wind_direction,barometric_pressure,vulnerability,opacity,penetrability,center,atom_id,tile_id,date

#The three maximal dimensions of the gamescape
gamescape_width = 100
gamescape_length = 100
gamescape_max_height = 10

def generate_center
	#generate the center of the atom 
	#ensuring no two atoms occupy the same space :-)
end

def generate_atmosphere
	#create pressure, temperature
end

def generate_dimensions
	#create length,breadth, height
end

def generate_wind
	#create wind direction and speed
end

def generate_atom_id
	#generate a unique atom_id
	#using an existing register of pre-existing atom IDs
	#as a reference 
end

def generate_vulnerability
	#what is "vulnerability" in the context
	#of the game plane
end

def generate_penetrability
	#what is penetrability in the context 
	#of the game plane ?
end

def generate_opacity
	#what is opacity in the
	#context of the game plane ?
end

def allocate_tile
 #place each atom in a predefined tile
end

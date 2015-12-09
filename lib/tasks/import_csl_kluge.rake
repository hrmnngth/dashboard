

namespace :import_new_csl_kluge do
  task :create_csl => :environment do

	# If you need to delete all data from the table, uncomment the following line
	# This script is used because the csl data does not follow a standard format and
	# has changed daily for the past month. 
	# Time permitting, I will recreate this file for each day's worth of data.
	# The key thing to remember is to set the system date at the command line before
	# running this script as the date information is stored in the :create_date field
	# and that date is the system date.
	#Ticket.delete_all
	

	# store a new record in the database
	newcsldata = Ticket.new
	newcsldata.type = "O&M"
	newcsldata.critical 	= 2
	newcsldata.critical_age = 23.5
	newcsldata.high 	= 17
	newcsldata.high_age 	= 30.18
	newcsldata.medium 	= 103
	newcsldata.medium_age 	= 26.11
	newcsldata.low		= 2
	newcsldata.low_age	= 98
	newcsldata.save

	newcsldata = Ticket.new
	newcsldata.type = "Other"
	newcsldata.critical 	= 1
	newcsldata.critical_age = 26
	newcsldata.high 	= 9
	newcsldata.high_age 	= 25.22
	newcsldata.medium 	= 133
	newcsldata.medium_age 	= 21.32
	newcsldata.low		= 0
	newcsldata.low_age	= 0
	newcsldata.save

	newcsldata = Ticket.new
	newcsldata.type = "DHS"
	newcsldata.critical 	= 0
	newcsldata.critical_age = 0
	newcsldata.high 	= 10
	newcsldata.high_age 	= 30.1
	newcsldata.medium 	= 15
	newcsldata.medium_age 	= 44.93
	newcsldata.low		= 2
	newcsldata.low_age	= 96
	newcsldata.save
	
  end
end 



namespace :import_new_csl do
  task :create_csl => :environment do
	require 'rubyXL'
	workbook = RubyXL::Parser.parse("./new-csl.xlsx")
	sheet_csl = workbook[0] # modify this based on the particular spreadsheet

	om_row = 4	# 0 based, modify this based on the particular spreadsheet "row 5 = 4"
	om_column = 7	# 0 based, modify this based on the particular spreadsheet "column h = 7"
	
	other_row = 15			# 0 based, modify this based on the particular spreadsheet
	other_column = om_column	# 0 based, modify this based on the particular spreadsheet

	# read the data from the established cells
	om_critical_count = 	sheet_csl[om_row][om_column].value
	om_critical_age = 	sheet_csl[om_row][om_column + 1].value
	om_high_count = 	sheet_csl[om_row + 1][om_column].value
	om_high_age = 		sheet_csl[om_row + 1][om_column + 1].value
	om_medium_count = 	sheet_csl[om_row + 3][om_column].value
	om_medium_age =		sheet_csl[om_row + 3][om_column + 1].value
	om_low_count =		sheet_csl[om_row + 2][om_column + 1].value
	om_low_age = 		sheet_csl[om_row + 2][om_column + 1].value
	# next get the "others"
	other_critical_count = 	sheet_csl[other_row][other_column].value
	other_critical_age = 	sheet_csl[other_row][other_column + 1].value
	other_high_count = 	sheet_csl[other_row + 1][other_column].value
	other_high_age =	sheet_csl[other_row + 1][other_column + 1].value
	other_medium_count = 	sheet_csl[other_row + 2][other_column].value
	other_medium_age = 	sheet_csl[other_row + 2][other_column + 1].value
	other_low_count =	0
	other_low_age =		0

	# store a new record in the database
	#Ticket.delete_all
	newcsldata = Ticket.new
	newcsldata.type = "O&M"
	newcsldata.critical 	= om_critical_count
	newcsldata.critical_age = om_critical_age
	newcsldata.high 	= om_high_count
	newcsldata.high_age 	= om_high_age
	newcsldata.medium 	= om_medium_count
	newcsldata.medium_age 	= om_medium_age
	newcsldata.low		= om_low_count
	newcsldata.low_age	= om_low_age
	newcsldata.save

	newcsldata = Ticket.new
	newcsldata.type = "Other"
	newcsldata.critical 	= other_critical_count
	newcsldata.critical_age = other_critical_age
	newcsldata.high 	= other_high_count
	newcsldata.high_age 	= other_high_age
	newcsldata.medium 	= other_medium_count
	newcsldata.medium_age 	= other_medium_age
	newcsldata.low		= other_low_count
	newcsldata.low_age	= other_low_age
	newcsldata.save

	
  end
end 

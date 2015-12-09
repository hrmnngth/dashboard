

namespace :import_new_stuck_apps do
  task :create_stuck => :environment do
	require 'rubyXL'
	workbook = RubyXL::Parser.parse("./new-stuck-apps.xlsx")
	sheet_counts = workbook['Counts']

	# read the data from the established cells
	missing = sheet_counts[2][3].value
	edit = sheet_counts[3][3].value
	successful = sheet_counts[4][3].value
	admin = sheet_counts[5][3].value
	evidence = sheet_counts[6][3].value

	# store a new record in the database
	newappdata = Stuckapp.new
	newappdata.missing = missing
	newappdata.inedit = edit
	newappdata.successful = successful
	newappdata.admin = admin
	newappdata.noevidence = evidence
	newappdata.save


  end
end 

namespace :import_acct_creations do
  task :create_accts => :environment do

	# currently this task is set to append data
	# if you need to delete data before running, uncomment the following line:
	# Acct.delete_all

	require 'rubyXL'

	workbook = RubyXL::Parser.parse("./IAM\ Report_All.xlsx")
	sheet_creations = workbook[0]

	first = true

	sheet_creations.each { |row|
	    new_acct_data = Acct.new
	    col_user_type = true
	    col_creation_date = false
	    col_columnc = false
	    col_columnd = false

	    if first == true
		# do nothing for the first row		
		first = false
		
	    else row && row.cells.each { |cell|
		puts cell
		if col_user_type == true 
			new_acct_data.user_type = cell && cell.value
			col_user_type = false
			col_creation_date = true
		elsif col_creation_date == true
			new_acct_data.creation_date_time = cell && cell.value
			col_creation_date = false
			col_columnc = true
		elsif col_columnc == true
			# not storing column c
			col_columnc = false
			col_columnd = true
		elsif col_columnd == true
			# not storing column d
			col_columnd = false
			#puts "This row: ", new_acct_data.user_type, " - ", new_acct_data.creation_date_time
			new_acct_data.save
		end
	    }
	    end
	}
    end
end

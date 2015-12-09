require 'csv'
namespace :import_notices_csv do
  task :create_notices => :environment do
    require 'csv'    
    csv_text = File.read('notices.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Notice.create!(row.to_hash)
    end 
  end
end 

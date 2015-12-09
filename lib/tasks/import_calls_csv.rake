require 'csv'
namespace :import_calls_csv do
  task :create_calls => :environment do
    require 'csv'    
    csv_text = File.read('call_volumes.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Call.create!(row.to_hash)
    end 
  end
end 

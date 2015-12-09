require 'csv'
namespace :import_acclock_csv do
  task :create_acclock => :environment do
    require 'csv'    
    csv_text = File.read('acclock.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Acclock.create!(row.to_hash)
    end 
  end
end 

require 'csv'
namespace :import_loginfailures_csv do
  task :create_loginfailures => :environment do
    require 'csv'    
    csv_text = File.read('failures.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Loginfailure.create!(row.to_hash)
    end 
  end
end 

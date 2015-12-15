require 'csv'
namespace :import_new_ndt_csv do
  task :create_ndt => :environment do
    require 'csv'    
    csv_text = File.read('new-ndt.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Noticestat.create!(row.to_hash)
    end 
  end
end 

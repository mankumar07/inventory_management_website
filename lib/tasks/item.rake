require 'csv'
namespace :item do 
  desc 'create item'
  

  task create_items: :environment do
    file = "db/csv/item.csv"
    CSV.foreach(file, :headers => true) do |row|
     
      if [row[0], row[1], row[2]].include? "nil"
        puts "===========#Item has been nil value ==============="
        next
      else 
        item = Item.create(:name => row[0],:price => row[1],:rating => row[2],:inventory_id =>"1" )
        puts "===========#{item.name} has been listed==============="
      end 
    end
  end
end

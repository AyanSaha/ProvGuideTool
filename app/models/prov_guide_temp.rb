require 'roo'
class ProvGuideTemp < ApplicationRecord
	self.primary_keys= :dialplan,:clli,:npa,:rate_center,:locality,:county

	begin
	def self.import(file)
  		message="Products imported!!"
  		spreadsheet = open_spreadsheet(file)
   
  		header = spreadsheet.row(1)
  
  		if header.count !=25
     		message="Columns must be 25!!Wrong format sheet uploaded!!"
    		return false,message
  		end
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
    provguidetemp = ProvGuideTemp.find_by_dialplan_and_clli_and_rate_center_and_npa_and_locality_and_county(row["dialplan"],row["clli"],row["rate_center"],row["npa"],row["locality"],row["county"])
    binding.pry
    if provguidetemp.nil?
        provguidetemp=ProvGuideTemp.new
       provguidetemp.attributes = row.to_hash
       provguidetemp.created_by='asaha005c'
      provguidetemp.last_update_by='asaha005c'
      provguidetemp.save!
      return true,message
    else
      message="Composite constraints on first 6 columns violated"
      return false,message
   end

   
   end
 end
   def self.open_spreadsheet(file)
   	
  	case File.extname(file.original_filename)
    when ".csv" then Roo::CSV.new(file.path)
    when ".xls" then Roo::Excel.new(file.path)
    when ".xlsx" then Roo::Excelx.new(file.path)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end
rescue
end
end

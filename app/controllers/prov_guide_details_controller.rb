class ProvGuideDetailsController < ApplicationController
	 
	def new

	end
	
	def create

	end 

	def import
	
	end
	
	def download_provguide_template
	 	respond_to do |format|
      	format.html
        format.xlsx {
         response.headers['Content-Disposition'] = 'attachment; filename="ProvGuideDetails.xlsx"'
         }
    	end
	end

end

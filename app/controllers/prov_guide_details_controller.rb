class ProvGuideDetailsController < ApplicationController
	
def index
  respond_to do |format|
      format.html
      format.json { render json: ProvGuidesDatatable.new(view_context) }
    end
end

	def new

	end

	
	def create

	end 

	def upload

	end

	def import

		if validate_format(params[:file])
			
       		@imported=ProvGuideTemp.import(params[:file])
       		msg=@imported[1]
       		if @imported.include?true
         		redirect_to :back,notice: msg

        	else
          		redirect_to :back,alert: msg
       		end
    	else 
       		redirect_to :back,alert:"Wrong file type!Please upload in .csv ,.xls and .xlxs"
		end
 	end
	
	def download_provguide_template
	 	respond_to do |format|
      	format.html
        format.xlsx {
         response.headers['Content-Disposition'] = 'attachment; filename="ProvGuideDetails.xlsx"'
         }
    	end
	end

private
	def validate_format(file_ext)
        #File format validation 
        
        format_file=file_ext.original_filename.split(".").to_set
        allowed_type=%w[csv xls xlsx].to_set
        val=format_file.intersect?allowed_type
        return val
      end

end

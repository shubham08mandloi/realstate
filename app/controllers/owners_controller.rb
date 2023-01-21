class OwnersController < ApplicationController
	def index
		@owners =Owner.all	
	end

	def new
		@owners = Owner.new
end

    def create 
    	 @owner = Owner.new(owners_params)
    if @owner.save
      redirect_to owners_path
		
	end
   end
 
   def  owners_params
  params.require(:owner).permit(:owner_name)   	
   end 
end
 

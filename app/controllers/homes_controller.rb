class HomesController < ApplicationController
	def index
		@homes = Home.all	
	end

	def new
		@homes = Home.new		
	end

	def create

   @home = Owner.last.build_home(homes_params)
    if @home.save
    redirect_to root_path
		
   end
   end

   def show
    @home = Home.find(params[:id])
   end

   def edit
   @home = Home.find(params[:id])
   end

  def update
  @home = Home.find(params[:id])
  @home.update(home_params)
  redirect_to root_path
  end

  def destroy
  @home = Home.find( params[:id])
  @home.destroy
  redirect_to root_path
  end

 
   def  homes_params
  params.require(:home).permit(:home_name)
   	
   end
   end
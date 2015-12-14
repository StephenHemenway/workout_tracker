class ChestworkoutsController < ApplicationController
	before_action :require_user, only: [:index]
	def index 
 		@chestworkouts = Chestworkout.all 
	end

	def new
		@chestworkout = Chestworkout.new
	end


	def create 
	  @chestworkout = Chestworkout.new(chestworkout_params) 
	  if @chestworkout.save 
	    redirect_to '/chestworkout' 
	  else 
	    render 'new' 
	  end 
	end

	def show 
	  @chestworkout = Chestworkout.find(params[:id])
	end

	def edit 
 	 @chestworkout = Chestworkout.find(params[:id]) 
	end


	def update 
	  @chestworkout = Chestworkout.find(params[:id]) 
	  if @chestworkout.update(chestworkout_params) 
	    redirect_to @chestworkout
	  else 
	    render 'edit' 
	  end 
	end

	private 
	  def chestworkout_params
	    params.require(:chestworkout).permit(:content) 
	  end
end

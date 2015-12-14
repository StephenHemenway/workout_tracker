# class ExercisesController < ApplicationController
# 	def show
#    	 @exercise = Exercise.find(params[:id])
#   	end

#   	def edit 
#   	@exercise = Exercise.find(params[:id]) 
# 	end


# 	def update 
# 	  @exercise = Exre.find(params[:id]) 
# 	  if @exercise.update_attributes(exercise_params) 
# 	    redirect_to(:action => 'show', :id => @exercise.id) 
# 	  else 
# 	    render 'edit' 
# 	  end 
# 	end

# 	private 
#   	def destination_params 
#     	params.require(:exercise).permit(:lift, :reps) 
#  	 end
# end

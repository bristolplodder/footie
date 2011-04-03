class PredictionsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @prediction = @user.predictions.create(params[:prediction])
    redirect_to user_path(@user)
  end
  
   def update
    @user = User.find(params[:id])
	@prediction = @user.predictions.create(params[:prediction])
    if @user.update_attributes(params[:prediction])
      flash[:success] = "Profile updated."
      redirect_to @user
    else
      @title = "Edit user"
      render 'edit'
    end
  end

  
end

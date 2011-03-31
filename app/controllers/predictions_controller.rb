class PredictionsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @prediction = @user.predictions.create(params[:prediction])
    redirect_to user_path(@user)
  end
end

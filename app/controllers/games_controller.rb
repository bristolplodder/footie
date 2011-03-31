class GamesController < ApplicationController
  def show
    @user = User.find(params[:id])
	@game = Game.find(params[:id])
	
  end
  
  def new
  end

  def edit
    @game = Game.find(params[:id])
	@title = "Edit user"
  end
  
end

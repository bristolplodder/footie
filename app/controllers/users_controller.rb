class UsersController < ApplicationController
def index
   @users = User.all
   respond_to do |format|
   format.html   # index.html.erb
   format.xml  { render :xml => @users }
   end
end
   

def show
   @user = User.find(params[:id])
   @prediction = @user.predictions.all
   #@predictions = @user.predictions
end 


#def show
#    user = User.find(params[:id])
#	@users = User.all
#	@predictions = user.predictions
	
#	end
 
def new
  @user = User.new
  @prediction = @user.build_prediction
  respond_to do |format|
	format.html # new.html.erb
	format.xml  { render :xml => @user }
  end
end
 
 # def new
  #end

  
def create
   @user = User.new(params[:user])
   @user.save ? redirect_to(user_path(@user)) : render(:action => :new)
end  
  
def edit
  
    @user = User.find(params[:id])
#	@user = user.predictions
#	@title = "Edit user"
end
  
 def update
  @user = User.find(params[:id])
  @user.update_attributes(params[:user]) ?
    redirect_to(user_path(@user)) : render(:action => :edit)
  end
 
 end
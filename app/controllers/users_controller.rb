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
end 


#def show
#    user = User.find(params[:id])
#	@users = User.all
#	@predictions = user.predictions
	
#	end
 
def new
  @user = User.new
  respond_to do |format|
	format.html # new.html.erb
	format.xml  { render :xml => @user }
  end
end
 
 # def new
  #end

  
def create
   @user = User.new(params[:user])
   respond_to do |format|
     if @user.save
     format.html { redirect_to(@user,
     :notice => 'Post was successfully created.') }
     format.xml  { render :xml => @user,
     :status => :created, :location => @user }
     else      format.html { render :action => "new" }
     format.xml  { render :xml => @user.errors,
     :status => :unprocessable_entity }
	 end
  end   
end  
  
def edit
  
    @user = User.find(params[:id])
#	@user = user.predictions
#	@title = "Edit user"
end
  
 def update
   @user = User.find(params[:id])
	if @user.update_attributes(params[:user])
     redirect_to @user
	else
    @title = "Edit user"
    render 'edit'
	end
	 
end
end
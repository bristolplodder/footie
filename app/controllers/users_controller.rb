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
   @masteruser = User.find(1)
   @prediction = @user.predictions.all
   @master = Prediction.where(:user_id => 1)
   @masterhome = @master.select("home")
   @masterhomescore = @master.select("home_score")
   @masteraway = @master.select("away")
   @masterawayscore = @master.select("away_score")
     
end 

def scoreboard
   @user = User.all
   @masteruser = User.find(1)
   @prediction = Prediction.all
   @master = Prediction.where(:user_id => 1)
   @masterhome = @master.select("home")
   @masterhomescore = @master.select("home_score")
   @masteraway = @master.select("away")
   @masterawayscore = @master.select("away_score")
   
     
end 

def score
@score = 0
zz =0
@user.predictions.each do |prediction|
 
     if prediction.home_score =	@masterhomescore[zz].home_score and prediction.away_score = @masterawayscore[zz].away_score
	  then @score = @score + 5
	  zz = zz +1
	  end
  end 
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
 
  
def create
  @user = User.create(params[:user])
  13.times do
  @prediction = @user.predictions.create(params[:prediction])
  end
   
  respond_to do |format|
  if @user.save
  format.html { redirect_to(@user,
				:notice => 'Welcome new user.') }
  format.xml  { render :xml => @user,
				:status => :created, :location => @user }
  else
    format.html { render :action => "new" }
	format.xml  { render :xml => @user.errors,
				:status => :unprocessable_entity }
   end
  end
end 

  
def edit
   @user = User.find(params[:id])
   @masteruser = User.find(1)
   @prediction = @user.predictions.all
   @master = Prediction.where(:user_id => 1)
   @masterhome = @master.select("home")
   @masterhomescore = @master.select("home_score")
   @masteraway = @master.select("away")
   @masterawayscore = @master.select("away_score")
   
end
  
 def update
  @user = User.find(params[:id])
  @user.update_attributes(params[:user]) ?
    redirect_to(user_path(@user)) : render(:action => :edit)
  end
  
  def destroy
  User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_path#/
  end 

 
 end
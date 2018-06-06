class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @user_characters = @user.characters
    @user_characters.each do |ch|
      puts "#{ch.name} id:#{ch.id} "
    end
    
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      flash[:success] = "Account created successfully!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Account Information Updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  
  private 
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
end

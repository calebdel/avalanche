class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
   @user = User.new(user_params)
    if @user.save
      @user.forecast
      @user.send_text_message(@user.phone)
      render text: "Thank you! You will recieve an SMS shortly with verifiication instructions."
      redirect_to observations_url
    else
      render "new"
    end
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to observations_url
    else
      render 'edit'
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :email, :phone)
  end

  
end

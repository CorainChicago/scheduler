class UsersController < ApplicationController

  def new
  end

  def show
    @user = User.find(user_params)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, :notice => "You signed up."
    else
      @errors = @user.errors.full_message
      redirect root_path
    end
  end

  def update

  end

  def delete
  end

  private

  def user_params
    params.require(:appointment).permit(:id, :tutor_id, :time, :student_id)
  end

end

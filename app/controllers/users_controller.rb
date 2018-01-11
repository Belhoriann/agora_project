class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    @user = User.find_by(full_name: params[:full_name])
  end
  
  def make_admin
    @user = User.find params[:id]
    @user.update( :admin => true )
    redirect_to :back
  end
  
  def remove_admin
    @user = User.find params[:id]
    @user.update( :admin => false )
    redirect_to :back
  end
end

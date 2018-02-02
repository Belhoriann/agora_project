class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    @user = User.find_by(full_name: params[:full_name])
    @articles = Article.all
    @comments = Comment.all
    @users = User.all
  end
  
  def destroy
    @user = User.find params[:id]
    @user.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
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
  
  def follow
    @user = User.find(params[:id])
    @user.liked_by current_user, vote_scope: 'following'

    respond_to do |format|
    format.html { redirect_to :back }
    format.js
    end
  end  
  
  def unfollow
    @user = User.find(params[:id])
    @user.unliked_by current_user, vote_scope: 'following'
    
    respond_to do |format|
    format.html { redirect_to :back }
    format.js
    end
  end
end

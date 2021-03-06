class CommentsController < ApplicationController
  before_action :find_commentable
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = @commentable.comments.new comment_params

    respond_to do |format|
      if @comment.save
        
        format.html { redirect_to :back }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to :back }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def bookmark_comment
    @comment = Comment.find(params[:id])
    @comment.liked_by current_user, vote_scope: 'bookmark_comment'

    respond_to do |format|
    format.html { redirect_to :back }
    format.js
    end
  end  
  
  def unbookmark_comment
    @comment = Comment.find(params[:id])
    @comment.unliked_by current_user, vote_scope: 'bookmark_comment'
    
    respond_to do |format|
    format.html { redirect_to :back }
    format.js
    end
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:user_id, :article_id, :body)
    end
    
    def find_commentable
      @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
      @commentable = Article.find_by_id(params[:article_id]) if params[:article_id]
    end
    
    def correct_user
      if user_signed_in?
        @my_comment = current_user.comments.find_by(id: params[:id])
        if @my_comment == nil
          redirect_to :back, alert: "You are not the author of this comment." unless current_user.admin?
        end
      end
    end
end

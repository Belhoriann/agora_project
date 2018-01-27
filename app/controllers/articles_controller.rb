class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
    @categories = Category.all
    
    if params[:search]
      @articles = Article.search(params[:search]).order("created_at DESC")
    else
      @articles = Article.all.order("created_at DESC")
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @user = User.find(@article.user_id)
  end

  # GET /articles/new
  def new
    @article = Article.new
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  # GET /articles/1/edit
  def edit
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)
    
    @categories = Category.all.map{|c| [ c.name, c.id ] }
    @article.category_id = params[:category_id]

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    @categories = Category.all.map{|c| [ c.name, c.id ] }
    @article.category_id = params[:category_id]

    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def like
    @article = Article.find(params[:id])
    @article.liked_by current_user, vote_scope: 'bookmark'

    respond_to do |format|
    format.html { redirect_to :back }
    format.js
    end
  end  
  
  def unlike
    @article = Article.find(params[:id])
    @article.unliked_by current_user, vote_scope: 'bookmark'
    
    respond_to do |format|
    format.html { redirect_to :back }
    format.js
    end
  end 
  
  def upvote
    @article = Article.find(params[:id])
    @article.liked_by current_user, vote_scope: 'praise'

    respond_to do |format|
    format.html { redirect_to :back }
    format.js
    end
  end  
  
  def downvote
    @article = Article.find(params[:id])
    @article.unliked_by current_user, vote_scope: 'praise'
    
    respond_to do |format|
    format.html { redirect_to :back }
    format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :sub_title, :body, :author, :author_work_place, :user_id, :category_id, :thumbnail)
    end
    
    def correct_user
      if user_signed_in?
        @my_article = current_user.articles.find_by(id: params[:id])
        if @my_article == nil
          redirect_to :back, alert: "You are not the author of this article." unless current_user.admin?
        end
      end
    end
end

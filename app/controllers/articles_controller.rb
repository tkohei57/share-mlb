class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :set_article, only: [:show, :edit, :update]

  def index
    @articles = Article.includes(:user)
    @articles = Article.page(params[:page]).per(5).order('created_at DESC')
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      to_root
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @article.comments.includes(:user)
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render :edit
    end
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy if current_user == article.user
    to_root
  end
  
  def search
    @articles = Article.search(params[:keyword]).page(params[:page]).per(3).order('created_at DESC')
    @keyword = params[:keyword]
  end

  private
  def article_params
    params.require(:article).permit(:image, :title, :content, :team_id).merge(user_id: current_user.id)
  end

  def set_article
    @article = Article.find(params[:id])
  end

  def to_root
    redirect_to root_path
  end
end

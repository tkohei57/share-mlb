class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :set_article, only: [:show, :edit, :update]

  def index
    @articles = Article.includes(:user)
    @articles = Article.page(params[:page]).per(5).order('created_at DESC')
    @team_names = Team.first(31)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    tag_list = params[:article][:name].split(',')
    if @article.save
      @article.save_tag(tag_list)
      to_root
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @article.comments.includes(:user)
    @article_tags = @article.tags
  end

  def edit
    @tag_list = @article.tags.pluck(:name).join(',')
  end

  def update
    tag_list = params[:article][:name].split(',')
    if @article.update(article_params)
      @article.save_tag(tag_list)
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
    @articles = Article.search(params[:keyword]).page(params[:page]).per(5).order('created_at DESC')
    @keyword = params[:keyword]
  end

  def team_search
    @team = Team.find(params[:team_id])
    @articles = Article.where(team_id: params[:team_id]).page(params[:page]).per(5).order('created_at DESC')
  end

  def tag_search
    @tag = Tag.find(params[:tag_id])
    @articles = @tag.articles.page(params[:page]).per(5).order('created_at DESC')
  end

  private
  def article_params
    params.require(:article).permit(:image, :title, :contents, :team_id).merge(user_id: current_user.id)
  end

  def set_article
    @article = Article.find(params[:id])
  end

  def to_root
    redirect_to root_path
  end
end

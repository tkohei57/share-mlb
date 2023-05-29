class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]

  def index
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def article_params
    params.require(:article).permit(:image, :title, :content, :team_id).merge(user_id: current_user.id)
  end
end

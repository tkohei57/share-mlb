class LikesController < ApplicationController
  before_action :set_article

  def create
    like = current_user.likes.build(article_id: params[:article_id])
    like.save
    render 'create.js.erb'
  end

  def destroy
    like = Like.find_by(article_id: params[:article_id], user_id: current_user.id)
    like.destroy
    render 'destroy.js.erb'
  end

  def set_article
    @article = Article.find(params[:article_id])
  end
end

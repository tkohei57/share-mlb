class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    if comment.save
      redirect_to "/articles/#{comment.article.id}"
    else
      @article = Article.find(comment.article.id)
      @comment = Comment.new
      @comments = @article.comments.includes(:user)
      render "articles/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, article_id: params[:article_id])
  end
end

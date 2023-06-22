class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @user = User.find(params[:id])
    @articles = @user.articles.page(params[:page]).per(3).order('created_at DESC')
    @likes = @user.likes.order('created_at DESC')
  end

end

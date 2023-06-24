require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメント投稿' do
    context 'コメントが投稿できる' do
      it '必要な情報が全て存在すれば投稿できる' do
        expect(@comment).to be_valid
      end
    end
    context 'コメントが投稿できない' do
      it 'textが空だと投稿できない' do
        @comment.text = ""
        @comment.valid?
        expect(@comment.errors.full_messages).to include("コメントを入力してください")
      end
      it 'userが紐づいていないと投稿できない' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Userを入力してください')
      end
      it 'articleが紐づいていないと投稿できない' do
        @comment.article = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Articleを入力してください')
      end
    end
  end
end

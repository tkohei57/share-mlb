require 'rails_helper'

RSpec.describe Article, type: :model do
  before do
    @article = FactoryBot.build(:article)
  end

  describe "記事投稿機能" do
    context "記事が投稿できる場合" do
      it "必要な情報が全て存在すれば投稿できる" do
        expect(@article).to be_valid
      end
      it "画像がなくても投稿できる" do
        @article.image = nil
        expect(@article).to be_valid
      end
    end
    context "記事が投稿できない場合" do
      it "タイトルが空では投稿できない" do
        @article.title = ""
        @article.valid?
        expect(@article.errors.full_messages).to include("タイトルを入力してください")
      end
      it "記事の本文が空では投稿できない" do
        @article.contents = ""
        @article.valid?
        expect(@article.errors.full_messages).to include("本文を入力してください")
      end
      it "team_idが1では投稿できない" do
        @article.team_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include("チームを選択してください")
      end
      it 'userが紐づいていないと投稿できない' do
        @article.user = nil
        @article.valid?
        expect(@article.errors.full_messages).to include('Userを入力してください')
      end
    end
  end
end

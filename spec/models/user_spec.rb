require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できる場合' do
      it '必要な情報が全て存在すれば登録できる' do
        expect(@user).to be_valid
      end
      it 'favorite_playerが空でも登録できる' do
        @user.favorite_player = ""
        expect(@user).to be_valid
      end
    end

    context '新規登録できない場合' do
      it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("ユーザー名を入力してください")
      end
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end
      it 'emailに@がないと登録できない' do
        @user.email = '111111'
        @user.valid?
        expect(@user.errors.full_messages).to include('Eメールは不正な値です')
      end
      it 'emailがすでに登録されていると登録できない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Eメールはすでに存在します')
      end
      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end
      it 'passwordが英語のみでは登録できない' do
        @user.password = 'aaaaaa'
        @user.password_confirmation = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは半角英数字混合の6文字以上で設定してください')
      end
      it 'passwordが数字のみでは登録できない' do
        @user.password = '111111'
        @user.password_confirmation = '111111'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは半角英数字混合の6文字以上で設定してください')
      end
      it 'passwordに全角文字がある場合は登録できない' do
        @user.password = '11aaああ'
        @user.password_confirmation = '11aaああ'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは半角英数字混合の6文字以上で設定してください')
      end
      it 'passwordが5文字以下では登録できない' do
        @user.password = '1111a'
        @user.password_confirmation = '1111a'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
      end
      it 'passwordが129文字以上では登録できない' do
        @user.password = Faker::Lorem.characters(number: 129, min_alpha: 1, min_numeric: 1)
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは128文字以内で入力してください')
      end
      it 'passwordとpassword_confirmationが一致していないと登録できない' do
        @user.password = '11111a'
        @user.password_confirmation = '11111b'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
      it 'favorite_team_idが1だと登録できない' do
        @user.favorite_team_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("お気に入りチームを選択してください")
      end
    end
  end
end

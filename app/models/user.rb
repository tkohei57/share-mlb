class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :articles
  has_many :comments
  has_many :likes

  has_many :active_relationships, class_name: "Relationship", foreign_key: :following_id
  has_many :followings, through: :active_relationships, source: :follower

  has_many :passive_relationships, class_name: "Relationship", foreign_key: :follower_id
  has_many :followers, through: :passive_relationships, source: :following

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :favorite_team

  validates :nickname, presence: true
  validates :favorite_team_id, numericality: { other_than: 1, message: "を選択してください" }
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX, message: 'は半角英数字混合の6文字以上で設定してください' }

  def followed_by?(user)
    follower = passive_relationships.find_by(following_id: user.id)
    return follower.present?
  end
end

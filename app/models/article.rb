class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :team

  validates :title, presence: true
  validates :content, presence: true
  validates :team_id, numericality: { other_than: 1, message: "を選択してください" }

  def self.search(search)
    if search != ""
      Article.where('title LIKE(?)', "%#{search}%")
    else
      Article.all
    end
  end

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
end

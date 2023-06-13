class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes
  has_many :article_tags, dependent: :destroy
  has_many :tags, through: :article_tags
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

  def save_tag(sent_tags)
    # タグが存在していれば、タグの名前を配列として全て取得
    current_tags = self.tags.pluck(:name) unless self.tags.nil?
    # 現在取得したタグから送られてきたタグを除いてoldtagとする
    old_tags = current_tags - sent_tags
    # 送信されてきたタグから現在存在するタグを除いたタグをnewとする
    new_tags = sent_tags - current_tags
  
    # 古いタグを消す
    old_tags.each do |old|
      self.tags.delete Tag.find_by(name: old)
    end
  
    # 新しいタグを保存
    new_tags.each do |new|
      new_article_tag = Tag.find_or_create_by(name: new)
      self.tags << new_article_tag
    end
  end
  
end

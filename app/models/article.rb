class Article < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :team

  validates :title, presence: true
  validates :content, presence: true
  validates :team_id, numericality: { other_than: 1, message: "can't be blank" }

  def self.search(search)
    if search != ""
      Article.where('title LIKE(?)', "%#{search}%")
    else
      Article.all
    end
  end
end

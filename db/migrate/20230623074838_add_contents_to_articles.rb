class AddContentsToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :contents, :text
  end
end

class AddConstraintsToArticles < ActiveRecord::Migration[6.0]
  def change
    change_column_null :articles, :title, false
    change_column_null :articles, :content, false
    change_column_null :articles, :author, false
    change_column_null :articles, :category, false
    change_column_null :articles, :published_at, false

    change_column :articles, :title, :string, limit: 40
  end
end

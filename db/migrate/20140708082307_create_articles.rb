class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author_id
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end

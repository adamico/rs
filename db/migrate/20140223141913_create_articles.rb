class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :titre

      t.timestamps
    end
  end
end

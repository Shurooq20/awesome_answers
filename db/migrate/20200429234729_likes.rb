class Likes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true, index: true
      t.references :question, foreign_key: true, index: true

      t.timestamps
    end
  end
end

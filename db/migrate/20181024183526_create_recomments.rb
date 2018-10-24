class CreateRecomments < ActiveRecord::Migration[5.2]
  def change
    create_table :recomments do |t|
      t.text :text
      t.belongs_to :user, index: true
      t.belongs_to :comment, index: true
      t.timestamps
    end
  end
end

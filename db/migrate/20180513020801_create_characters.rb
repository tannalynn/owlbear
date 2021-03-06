class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :name
      t.integer :level

      t.timestamps null: false
    end
  end
end

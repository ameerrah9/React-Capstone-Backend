class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :img_src
      t.string :cit
      t.string :name
      t.integer :wins
      t.integer :losses
      t.integer :likes
      t.integer :conference_rank
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

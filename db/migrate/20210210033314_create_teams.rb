class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :logo_url
      t.string :city
      t.string :name
      t.integer :wins
      t.integer :losses
      t.integer :conference_rank
      t.timestamps
    end
  end
end

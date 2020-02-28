class CreateMatchLayouts < ActiveRecord::Migration[6.0]
  def change
    create_table :match_layouts do |t|
      t.boolean :is_playing
      t.string :player1_name
      t.string :player2_name
      t.string :match_name
      t.integer :player1_score
      t.integer :player2_score

      t.timestamps
    end
  end
end

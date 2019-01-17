class CreateArtists < ActiveRecord::Migration[4.2]
  # do method
  def up
  end
  # undo method
  def down
  end

  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
    end
  end
end

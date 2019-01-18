class CreateArtists < ActiveRecord::Migration
  # def up
  # end
  #
  # def down
  # end

  def change
      create_table :artists do |t|
          t.string :name
          t.string :genre
          t.integer :age
          t.string :hometown
      end
  end

  # The change method The change method is the primary way of writing
  # migrations.

  # It works for the majority of cases, where Active Record knows how
  # to reverse the migration automatically.

  # Just know you have options.
end

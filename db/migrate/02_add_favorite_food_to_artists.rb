# the following adds a column to the artists table called favorite_food
# which will contain a string.

class AddFavoriteFoodToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :favorite_food, :string
  end
end

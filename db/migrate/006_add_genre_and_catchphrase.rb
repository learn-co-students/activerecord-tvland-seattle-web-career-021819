class AddGenreAndCatchphrase < ActiveRecord::Migration[4.2]

  def change
    add_column :shows, :genre, :string
    add_column :characters, :catchphrase, :string
  end



end

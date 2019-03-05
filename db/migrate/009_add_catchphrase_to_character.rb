class AddCatchphraseToCharacter < ActiveRecord::Migration[5.1]

  def change
    add_column :characters, :catch_phrase, :string
  end

end

class UpdateCatchphrase < ActiveRecord::Migration[5.2]
  def change
    rename_column :characters, :catch_phrase, :catchphrase
  end
end

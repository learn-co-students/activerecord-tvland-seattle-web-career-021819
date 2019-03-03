class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  # sql equivalent of "SELECT character.name, show.name FROM characters
  # WHERE actor_id = show_id"
  def list_roles
    self.characters.map do |character|
      character.name + " - " + character.show.name
    end
  end

end

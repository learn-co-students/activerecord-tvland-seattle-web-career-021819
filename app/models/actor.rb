require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  # lists all characters that an actor has
  # ["Khaleesi - Game of Thrones"]
  def list_roles
    self.characters.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end

end

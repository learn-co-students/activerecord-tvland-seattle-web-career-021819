class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end

  def list_roles #all characters an actor has
    self.characters.map do |character_info|
      "#{character_info.name} - #{character_info.show.name}"  #character name followed by show name
    end
  end

end

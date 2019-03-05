class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    Character.where(actor_id: self.id).map do |char_inst|
      "#{char_inst.name} - #{char_inst.show.name}"
    end
  end


end

class Actor < ActiveRecord::Base
    has_many :characters

    def full_name
        return "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        char=Character.where(actor_id: self.id)[0]
        show=Show.find(char.show_id)
        #show=Show.where(show.id: char.show_id).name
        "#{char.name} - #{show.name}"

    end
  
end
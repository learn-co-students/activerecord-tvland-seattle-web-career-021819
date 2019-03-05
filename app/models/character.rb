require 'pry'

class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(name_hash)
    self.show = Show.new(name: name_hash[:name])
  end

  def build_network(call_letters_hash)
    binding.pry
    show = self.build_show
    show.network = Network.new(call_letters: call_letters_hash[:call_letters])
  end

end

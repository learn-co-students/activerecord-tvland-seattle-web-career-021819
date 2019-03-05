require 'pry'

class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(call_letters_hash)
    self.network = Network.new(call_letters: call_letters_hash[:call_letters])
  end

end

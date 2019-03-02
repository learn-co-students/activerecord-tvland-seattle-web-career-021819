class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network

    def build_network (h)
        n=Network.create(h)
        self.network_id=n.id
    end
end
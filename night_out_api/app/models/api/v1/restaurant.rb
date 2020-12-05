class Api::V1::Restaurant < ApplicationRecord
    belongs_to :location

    def self.scope(location)
        self.where(location_id:location)
    end
end

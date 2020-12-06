class Api::V1::Restaurant < ApplicationRecord
    has_many :comments
    belongs_to :location

    def self.scope(location)
        self.where(location_id:location)
    end
end

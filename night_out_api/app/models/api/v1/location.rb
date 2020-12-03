class Api::V1::Location < ApplicationRecord
    has_many :restaurants 
end

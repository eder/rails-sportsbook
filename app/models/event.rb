class Event < ApplicationRecord
  belongs_to :sport
  has_many :selections
end

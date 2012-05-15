class Event < ActiveRecord::Base
  attr_accessible :capacity, :description, :is_public, :name
end

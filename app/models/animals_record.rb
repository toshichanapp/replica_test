class AnimalsRecord < ActiveRecord::Base
  self.abstract_class = true
  connects_to database: { writing: :animals, reading: :animals_replica }
end
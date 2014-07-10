class Technique < ActiveRecord::Base
	has_many :recipes
	has_many :meatcuts, through: :recipes
end

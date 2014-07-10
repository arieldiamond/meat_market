class Primal < ActiveRecord::Base
	belongs_to :animal
	has_many :meatcuts
end

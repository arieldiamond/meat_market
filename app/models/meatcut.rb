class Meatcut < ActiveRecord::Base
	belongs_to :primal
	has_many :recipes
	has_many :techniques, through: :recipes
end

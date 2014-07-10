class Recipe < ActiveRecord::Base
	belongs_to :technique
	belongs_to :meatcut
end

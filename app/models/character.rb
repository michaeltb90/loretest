class Character < ApplicationRecord
	belongs_to :race
	belongs_to :gender
	belongs_to :faction

end

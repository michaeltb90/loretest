class Race < ApplicationRecord
	has_many :characters
	belongs_to :sentience
end

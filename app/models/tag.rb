class Tag < ApplicationRecord
	attr_accessor :name
	has_many :works

	validates :name,  presence: true

end

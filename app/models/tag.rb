class Tag < ApplicationRecord
	attr_accessor :name
	has_many :works
end

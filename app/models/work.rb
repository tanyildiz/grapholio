class Work < ApplicationRecord
	attr_accessor :title, :image, :tag_id, :description
	belongs_to :tag
end

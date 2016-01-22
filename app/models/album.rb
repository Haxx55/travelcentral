class Album < ActiveRecord::Base
	has_many :album_images
	belongs_to :profile

	geocoded_by :full_address
	after_validation :geocode

	def full_address
		[city, country].compact.join(', ')
	end
end

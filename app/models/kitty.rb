class Kitty < ActiveRecord::Base
	mount_uploader :image, ImageUploader

#def new
	# permit_params :image
#end
end

class Kitty < ActiveRecord::Base
	mount_uploader :image, ImageUploader

#def new
	# permit_params :image
#end
  def publish!
    self.sent_at = Time.now
    save!
   # kitty = Kitty.where(sent_at: nil).sample
   
  end
end

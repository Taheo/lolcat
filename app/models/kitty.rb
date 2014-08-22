class Kitty < ActiveRecord::Base
	mount_uploader :image, ImageUploader

  def publish!
    self.sent_at = Time.now
    save!   
  end
end

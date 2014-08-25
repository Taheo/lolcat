class Kitty < ActiveRecord::Base
	mount_uploader :image, ImageUploader

  def publish!
    self.sent_at = Time.zone.now
    save!   
  end
end

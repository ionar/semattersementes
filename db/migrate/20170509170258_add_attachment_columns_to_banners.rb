class AddAttachmentColumnsToBanners < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :banners, :image
  end
end

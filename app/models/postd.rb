class Postd < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :title, :body, :image, presence: true
end

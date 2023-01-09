class Post < ApplicationRecord
  validates :content, presence: true
  enum viewers: { public_viewer: 0, friend: 1, private_viewer: 2}
  mount_uploader :image, ImageUploader

  belongs_to :user
end

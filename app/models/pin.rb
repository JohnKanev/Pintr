class Pin < ApplicationRecord
  belongs_to :user
  has_attached_file :image, :styles => {:medium => "300x300>",:thumb => "100x100>"}, default_url: "https://unsplash.it/300/200/"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :description, presence: true
  validates :image, presence: true
end

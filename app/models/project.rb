class Project < ApplicationRecord
  mount_uploader :image, PhotoUploader
  belongs_to :user
  has_many :proposals
end

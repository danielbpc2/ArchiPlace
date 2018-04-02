class Proposal < ApplicationRecord
  mount_uploader :image, PhotoUploader
  belongs_to :project
  belongs_to :user
end

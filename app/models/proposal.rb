class Proposal < ApplicationRecord
  mount_uploader :image, PhotoUploader
  belongs_to :project
  belongs_to :user

  validates :price, presence: true
  validates :price, numericality: { only_integer: true }
  validates :duration, presence: true
  validates :description, presence: true
end

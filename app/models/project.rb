class Project < ApplicationRecord
  mount_uploader :image, PhotoUploader
  belongs_to :user
  has_many :proposals
  #Validations
  validates :title, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :dimensions, presence: true
  validates :room, presence: true
  validates :room, inclusion: { in:
    [
      'Bedroom', 'Kitchen', 'Bathroom', 'laundry room',
      'Attic', 'Dressing room', 'Garage', 'Lounge',
      'Dining room', 'Cellar', 'Basement','Boiler room','Living room', 'Hall'
    ]
  }
  validates :budget, presence: true
  validates :budget, numericality: { only_integer: true }
  validates :deadline, presence: true
end

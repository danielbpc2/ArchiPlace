class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :image, PhotoUploader
  has_many :projects
  has_many :proposals
  validates :email, presence: true
  validates :name, presence: true
  validates :phone, presence: true
  validates :birthday, presence: true
  validates :role, presence: true
  validates :email, uniqueness: true
  validates :image, presence: true
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :projects
  has_many :proposals
  validates :email, :password, :name, :phone, :birthday, :role, presence: true
  validates :email, uniqueness: true

end

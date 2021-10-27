class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many  :applications, dependent: :destroy
  has_many :applied_companies, through: :applications, source: :company
  has_many :interviews, through: :applications, source: :interviews
  has_many :interviewed_companies, through: :interviews, source: :company
end

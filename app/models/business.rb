class Business < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  #after_create :send_welcome_email
  has_many :services, dependent: :destroy
  has_many :bookings, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  mount_uploader :logo, LogoUploader
  validates :url, uniqueness: true, presence: true
  private

  def send_welcome_email
    BusinessMailer.welcome(self).deliver_now
  end
end



class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sounds, dependent: :destroy
  has_one_attached :image

  def get_image
    if image.attached?
      image
    else
      'no_image.jpeg'
    end
  end
end

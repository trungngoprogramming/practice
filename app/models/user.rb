class User < ApplicationRecord
  enum role: %i(admin member)

  has_many :posts, dependent: :destroy, inverse_of: :user
  has_many :comments, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true
  validates :accept_age, acceptance: {message: I18n.t("member.accept_age.validates.message")}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
end

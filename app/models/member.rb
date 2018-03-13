class Member < ApplicationRecord
  has_many :posts, dependent: :destroy, inverse_of: :member
  accepts_nested_attributes_for :posts
  validates :name, presence: true
  validates :email, presence: true
  validates :accept_age, acceptance: {message: I18n.t("member.accept_age.validates.message")}
end

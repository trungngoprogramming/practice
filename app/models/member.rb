class Member < ApplicationRecord
  has_many :posts, dependent: :destroy, inverse_of: :member
  accepts_nested_attributes_for :posts
  validates_presence_of :name
  validates_presence_of :email
end

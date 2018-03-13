class Post < ApplicationRecord
  belongs_to :member
  validates_presence_of :title
  validates_presence_of :content
end

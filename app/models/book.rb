class Book < ActiveRecord::Base
  validates :title, :author, :rating, presence: true
  belongs_to :user
end
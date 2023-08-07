class User < ApplicationRecord
  validates_uniqueness_of :email
  belongs_to :library
  has_many :books
end

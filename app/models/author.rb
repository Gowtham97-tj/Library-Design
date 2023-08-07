class Author < ApplicationRecord
  belongs_to :library
  has_many :books
end

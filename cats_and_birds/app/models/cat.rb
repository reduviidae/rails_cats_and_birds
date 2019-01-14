class Cat < ApplicationRecord
  has_many :birds, dependent: :destroy
end

class PrivateMessage < ApplicationRecord
  belongs_to :user
  has_many :user, through: :private_message_receivers
end

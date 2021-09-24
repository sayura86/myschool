class Message < ApplicationRecord
  attachment :image
  belongs_to :user
end

class Chat < ApplicationRecord
  belongs_to :user
  validates :body, presence: true
  scope :latest_chat, -> { order(:created_at).last(15)}
end

class Message < ActiveRecord::Base
  validates :message, presence: true
  validates :name,    presence: true
end

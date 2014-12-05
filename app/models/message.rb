class Message < ActiveRecord::Base
  validates :message, :name, presence: true
end

class UserNotifier < ApplicationMailer
  default :from => 'hello@ariandfern.com'

  def send_notification(users)
    users.each do |user|
      mail( :to => user[:email], :subject => 'New message added to the guestbook!' )
    end
  end
end

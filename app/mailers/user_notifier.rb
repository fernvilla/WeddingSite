class UserNotifier < ApplicationMailer
  default :from => 'hello@ariandfern.com'

  def send_notification(user)
    mail( :to => user, :subject => 'New message added to the guestbook!' )
  end
end

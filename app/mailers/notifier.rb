class Notifier < ActionMailer::Base

  def contact_notification(sender)
    @sender = sender
    mail(:to => "cdkigtest@gmail.com",
         :from => sender.email,
         :subject => "New #{sender.contact_type}")
  end
end

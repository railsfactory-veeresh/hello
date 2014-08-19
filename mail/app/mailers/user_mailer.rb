class UserMailer < ActionMailer::Base
  default from: "veeresh@railsfactory.org"
  def welcome_email(user)
     @user = user
     @url = 'http://gmail.com/login'
      attachments.inline['REV.jpg'] = File.read('/home/priyanka/Desktop/rails/mail/public/REV.jpg')
     mail(to: @user.email, subject: 'hi anad how is my first app its mailing app sent inside small app ')
end
end

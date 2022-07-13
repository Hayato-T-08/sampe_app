# Preview all emails at http://us-west-1.console.aws.amazon.com/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://us-west-1.console.aws.amazon.com/rails/mailers/user_mailer/account_activation
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end


  # Preview this email at http://us-west-1.console.aws.amazon.com/rails/mailers/user_mailer/password_reset
  # http://303c802c1cf94565b13ede75fc2adebe.vfs.cloud9.us-west-1.amazonaws.com/rails/mailers/user_mailer/password_reset
  def password_reset
    user = User.first
    user.reset_token = User.new_token
    UserMailer.password_reset(user)
  end

end

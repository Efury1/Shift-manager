# Preview all emails at http://localhost:3000/rails/mailers/passwor_mailer
class PassworMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/passwor_mailer/reset
  def reset
    PassworMailer.reset
  end

end

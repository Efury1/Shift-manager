# Functionality 
# Inherits from application controller
# Find user by email
# If user is found send email and redirect to root path
# Deliver later to send as background job

class PasswordResetsController < ApplicationController
    def new
    end
    
    def create
        @user = User.find_by(email: paramas[:email])

        if @user.present?
            PasswordMailer.with(user: @user).reset.deliver_later
        end
        redirect_to root_path, notice: "If an account with that email was found, we have sent a link to reset your password."
    end
end
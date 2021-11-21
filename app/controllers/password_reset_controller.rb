# Functionality 
# Inherits from application controller
# Finds user by email
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

    # Edit can confirm that link isn't expired
    def edit
        @user = User.find_signed(params[:token], purpose: "password_set")
    rescue ActiveSupport::MessageVerifier::InvalidSignature
        redirect_to sign_in_path, alert: "Your token has expired. Please try again"
    end

    def update
        @user = User.find_signed!(params[:token], purpose: "password_set")
        if @user.update(password_params)
            redirect_to sign_in_path, notice: "Your password was reset successfully. Please sign in."
        else
            render: edit
        end
    end

    private
    
    def password_params
        params.require(:user).permit(:password, :password_confirmation)
    end
end
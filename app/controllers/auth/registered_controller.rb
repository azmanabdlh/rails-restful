class Auth::RegisteredController < ApplicationController
    def create
        body = params.permit(
            :name, :username, :email, :password, :password_confirmation
        )
        @user = User.new(body)

        unless @user.valid?
            raise ResponseError.new code: 401, errors: @user.errors.messages, message: 'Required validations.'
        end

        @user.save

        render 'auth/registered', status: :created
    end
end

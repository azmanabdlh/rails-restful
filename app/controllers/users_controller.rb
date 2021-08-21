class UsersController < ApplicationController
    before_action :find, only: [:destroy, :show, :update]
    def index
        @users = User.all
    end

    def show
        begin
            @user = User.find(params[:id])

        rescue ActiveRecord::RecordNotFound
            raise ResponseError.new(
                message: "User by id #{params[:id]} not found.",
                status_code: 404
            )
        end
    end

    def create
        body = params.permit(
            :name, :username, :email, :password, :password_confirmation
        )

        @user = User.new(body)

        if not @user.save
            errors = @user.errors.full_messages
            raise ResponseError.new(status_code: 502, errors: errors)
        end

    end

    def destroy
        @user.destroy
    end

    def update
        # not implements
    end


    private

    def find
        begin
            @user = User.find(params[:id])

        rescue ActiveRecord::RecordNotFound
            raise ResponseError.new(
                message: "User by id #{params[:id]} not found.",
                status_code: 404
            )
        end
    end

end

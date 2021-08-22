class UsersController < ApplicationController
    before_action :find_or_fail, only: [:destroy, :show, :update]
    def index
        @users = User.all
    end

    def show
        # Implicit render.
    end

    def create
        body = params.permit(
            :name, :username, :email, :password
        )

        @user = User.new(body)
        raise ResponseError.new code: 401, errors: @user.errors.full_messages if not @user.valid?

    end

    def destroy
        @user.destroy
    end

    def update
        @user.update(
            params.permit(
                :name, :username, :email, :password
            )
        )
    end


    private

    def find_or_fail
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

class PostsController < ApplicationController
    before_action :find_or_fail, only: [:show, :update, :destroy]

    def index
        @posts = Post.all
    end

    def show
    end

    def create
        @post = Post.new(
            params.permit(
                :title, :description, :user_id
            )
        )

        unless @post.valid?
            errors = @post.errors.messages
            raise ResponseError.new code: 401, errors: errors, message: 'Required validations.'
        end

        @post.save

        render status: :created
    end

    def update
        @post.update(
            params.permit(
                :title, :description, :user_id
            )
        )

        unless @post.valid?
            errors = @post.errors.messages
            raise ResponseError.new code: 401, errors: errors, message: 'Required validations.'
        end

    end


    def destroy
        @post.destroy
    end


    private
    def find_or_fail
        begin
            @post = Post.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            raise ResponseError.new code: 404, message: "post by id #{params[:id]} not found."
        end
    end
end

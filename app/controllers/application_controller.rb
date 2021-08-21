class ApplicationController < ActionController::API
    include ActionView::Layouts

    layout 'app'
    before_action :prepending

    # Prepending initial state.
    def prepending
        @status_code = 200
        @message = ''
        @errors = []
    end


    class ResponseError < StandardError
        attr_reader :message, :errors, :status_code

        def initialize(
            message: 'ResponseError',
            status_code: 200,
            errors: []
        )
            super

            @message = message
            @errors = errors
            @status_code = status_code

        end
    end


    rescue_from ResponseError do |ex|
        @status_code = ex.status_code
        @errors = ex.errors
        @message = ex.message

        render 'layouts/app', status: ex.status_code
    end

end
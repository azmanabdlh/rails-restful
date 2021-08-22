class ApplicationController < ActionController::API
    include ActionView::Layouts

    layout 'app'
    before_action :prepending

    # Prepending initial state.
    def prepending
        @message = 'Successfully'
        @errors = []
    end


    class ResponseError < StandardError
        attr_reader :message, :errors, :status_code

        def initialize(**kwargs)
            super

            @message = kwargs[:message]
            @errors = kwargs[:errors]
            @status_code = kwargs[:code]

        end
    end


    rescue_from ResponseError do |ex|
        @errors = ex.errors
        @message = ex.message

        render 'layouts/app', status: ex.status_code
    end

end
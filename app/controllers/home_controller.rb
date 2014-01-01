class HomeController < ApplicationController

    def index
        @non_rootwords = NonRootword.all
        render 'index' and return if ['development', 'test'].include?(Rails.env)
        render 'landing_page'
    end

    def interested_user
        filtered_params = filter_email_param(params)
        Users.create(filtered_params)
        render 'thank_you'
    end

    private

    def filter_email_param(params)
        params.require('user').permit(:email)
    end

end
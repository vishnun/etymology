class NonRootwordsController < ApplicationController
    before_filter :authenticate_admin!, only: :create

    def create
        filtered_params = filter_non_root_word_params(params)
        NonRootword.create(filtered_params)
        redirect_to(admin_path)
    end


    private
    def filter_non_root_word_params params
        filtered_params = params.require('non_root_word').permit(:word, :meaning, :id, :usages)
        filtered_params[:usages] = filtered_params[:usages].split(',')
        filtered_params[:meaning] = filtered_params[:meaning].split(',')
        filtered_params[:rootword] = Rootword.where(id: filtered_params.delete(:id)).first
        filtered_params
    end
end
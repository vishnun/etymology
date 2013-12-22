class NonRootwordsController < ApplicationController
    def create
        filtered_params = filter_non_root_word_params(params)
        NonRootword.create(filtered_params)
        require 'pry'
        binding.pry
        redirect_to(admin_path)
    end

    private
    def filter_non_root_word_params params
        filtered_params = params.require('non_root_word').permit(:word, :meaning, :id, :usages)
        filtered_params[:usages] = filtered_params[:usages].split(',')
        filtered_params[:meaning] = filtered_params[:meaning].split(',')
        filtered_params[:rootword] = Rootword.where(id: filtered_params.delete(:id)).first
        require 'pry'
        binding.pry
        filtered_params
    end
end
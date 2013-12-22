class RootwordsController < ApplicationController
  def create
    filtered_params = filter_root_word_params(params)
    Rootword.create(filtered_params)
    redirect_to(admin_path)
  end

  private
  def filter_root_word_params params
    params.require('root_word').permit(:word, :meaning, :usages)
  end
end
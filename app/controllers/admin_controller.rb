class AdminController < ApplicationController
  before_filter :authenticate_admin!

  def index
    @rootwords = Rootword.all
  end

end
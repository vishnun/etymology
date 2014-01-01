class AdminController < ApplicationController
  before_filter :authenticate_admin!

  def index
    @rootwords = Rootword.all
    @non_rootwords = NonRootword.all
  end

  def users
      @interested_user_emails = Users.all
      render json: @interested_user_emails
  end

end
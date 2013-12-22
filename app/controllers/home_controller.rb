class HomeController < ApplicationController
    def index
        @non_rootwords = NonRootword.all
    end
end
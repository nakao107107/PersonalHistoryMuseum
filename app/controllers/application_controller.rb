class ApplicationController < ActionController::Base

    def set_user_id(id)
        session[:id] = id
    end
end

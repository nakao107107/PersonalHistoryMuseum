class ApplicationController < ActionController::Base

    def set_user_id(id)
        params[:id] = id
    end
end

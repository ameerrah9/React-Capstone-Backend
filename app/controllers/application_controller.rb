class ApplicationController < ActionController::API
    include ::ActionController::Cookies
    def current_user
        User.find_by(id: session[:user_id])
        # if decoded_token
        #     user_id = decoded_token[0]['user_id']
        # end
    end
    
    def logged_in?
        !!current_user
    end

end

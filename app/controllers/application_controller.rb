class ApplicationController < ActionController::Base

    def current_user
        if developer_signed_in?
            return current_developer
        end
        if employer_signed_in?
            return current_employer
        end
        return false
    end

    def get_default_avatar_path
        File.join(Rails.root, 'storage', '_generic', 'default-avatar.jpg')
    end
end

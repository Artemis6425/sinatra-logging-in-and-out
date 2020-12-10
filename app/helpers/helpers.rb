class Helpers
    def self.current_user(params)
        @user = User.find_by(params[:username])
        @user
    end
    def self.is_logged_in?(hash)
        hash.include?(:user_id) ? true : false
    end
end
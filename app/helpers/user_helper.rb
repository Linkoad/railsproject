module UserHelper
    def follow_button(user)
            button_to "Follow", follow_user_path
        end
    end
class UsersController < Clearance::UsersController
	def new
		@user = User.new
	end

	def show
		@user = User.find_by(username: params[:id])
		@shouts = @user.shouts
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password)
	end
end

class UsersController < Clearance::UsersController
	def show
		@user = User.find(params[:id])
		@shouts = @user.shouts
	end
	
	private

	def user_params
	  params.require(:user).params.permit(:name, :email, :password)
	end
end

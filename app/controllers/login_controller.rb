class LoginController < ApplicationController
  def index
  	@login = Login.all()

  	render json: @login
  end

  def create
  	@login = Login.create(login_param)

  	render json: @login
  end

  def destroy
  	@login = Login.find(params[:id])
  	@login.destroy

  	render json: @login
  end

  private
  def login_param
  	params.require(:login).permit(:username, :password, :level)
  end

end

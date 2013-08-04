class UsersController < ApplicationController
  def profilelink
  	@user = User.find(params[:id])
  end
end

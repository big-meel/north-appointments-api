class Api::ProfileController < ApplicationController

  before_action :find_user

  def show
    # TODO: Return JSON object of user
    render json: { "user" => @user }
  end

  private

  def find_user
    # TODO: Add error handling if user not found
    @user = User.find(params[:id])
  end
end
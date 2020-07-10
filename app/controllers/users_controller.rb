class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /search/nearby
  def search
    @users = User.within(params[:radius],:origin => [params[:lat], params[:lng]])
    render json: @users
  end

  # POST /users/bulk_create
  def bulk_create
    @data = params[:data]
    @success = []
    @errors = []

    @data.each do |user_data|
      @user = User.new( 
                        name: user_data[:name],
                        lat: user_data[:lat],
                        lng: user_data[:lng]
                        )
      if @user.save
        @success << @user 
      else
        @errors << @user.errors
      end
    end
    render json: {success: @success, errors: @errors}, status: :ok
  end
end

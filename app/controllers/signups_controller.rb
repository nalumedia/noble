class SignupsController < ApplicationController
  before_action :set_signup, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @signups = Signup.all.order("created_at DESC")
    respond_with(@signups)
  end

  def show
    respond_with(@signup)
  end

  def new
    @signup = Signup.new
    respond_with(@signup)
  end

  def edit
  end

  def create
    @signup = Signup.new(signup_params)
    @signup.save
    respond_with(@signup)
  end

  def update
    @signup.update(signup_params)
    respond_with(@signup)
  end

  def destroy
    @signup.destroy
    respond_with(@signup)
  end

  private
    def set_signup
      @signup = Signup.find(params[:id])
    end

    def signup_params
      params.require(:signup).permit(:signup_name, :signup_email, :signup_phone, :signup_status, :signup_type)
    end
end

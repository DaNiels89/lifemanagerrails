# frozen_string_literal: true

class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])

    render json: @profile.as_json
  end

  def new
    @profile = Profile.new
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      redirect_to @profile
    else
      render 'new'
    end
  end

  def update
    @profile = Profile.find(params[:id])

    if @profile.update(profile_params)
      redirect_to @profile
    else
      render 'edit'
    end
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy

    redirect_to profiles_path
  end

  private

  def profile_params
    params.require(:profile).permit(:firstname, :lastname, :gender, :dob, :phonenumber, :country)
  end
end

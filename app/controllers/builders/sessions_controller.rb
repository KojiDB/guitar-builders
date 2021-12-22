# frozen_string_literal: true

class Builders::SessionsController < Devise::SessionsController
  include Accessible
  skip_before_action :check_user, only: :destroy
  before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    super
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:brand_name, :area, :city, :introduction, :price_zone, :phone, :private_order_id])
  end
end

class RegistrationsController < Devise::RegistrationsController
  protected

  def after_update_path_for(resource)
      root_path
  end

  private
    def sign_up_params
      params.require(:doctor).permit(:name, :email, :password, :password_confirmation, :reg_id, :description, :address)
    end

    def account_update_params
      params.require(:doctor).permit(:name, :email, :current_password,:password_confirmation, :reg_id, :description, :address)

    end
end

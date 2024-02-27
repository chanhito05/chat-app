class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end

# nameカラムの保存を可能とする記述
# devise_parameter_sanitizerメソッドで特定のカラムを許容できる
# nameキーの内容の保存をpermitメソッドで許可
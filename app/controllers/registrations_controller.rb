class RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_admin, only: [:create]

  private

  def authenticate_admin
    # ここで特定のIDとパスワードをチェックし、管理者かどうかを判断します。
    unless admin_authenticated?
      redirect_to root_path, alert: "管理者以外は新規登録できません。"
    end
  end

  def admin_authenticated?
    # 特定のパスワードをチェックするロジックを実装します。
    # 例えば、環境変数に保存した情報と比較するなど。

    admin_password = ENV['ADMIN_PASSWORD']
    params[:user][:admin_password] == admin_password
  end

end
class UsersController < ApplicationController
  def edit # ビューファイルを表示するだけなので、アクションの定義のみ
  end

  def update # updateアクションをusersコントローラーに定義
    if current_user.update(user_params) #current_userメソッドを使用して、ログインしているユーザーの情報を更新
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity # editのアクションをしていしているため、失敗した場合はeditのビューが表示される
    end
  end

  private

  def user_params # permitメソッドを使用し、「name」と「email」の編集を許可
  params.require(:user).permit(:name, :email)
end
end

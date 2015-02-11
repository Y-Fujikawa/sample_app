class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # ユーザーをサインインさせ、ユーザーページ(show)にリダイレクトする
      # SessionHelperに記述されている、sign_in
      sign_in user
      redirect_back_or user
    else
      # エラーメッセージを表示し、サインインフォームを再描画する
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    # SessionHelperに記述されている、sign_out
    sign_out
    redirect_to root_url
  end

end

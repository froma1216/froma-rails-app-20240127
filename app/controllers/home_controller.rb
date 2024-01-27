class HomeController < ApplicationController
  # ログインしていない場合、ログイン画面にリダイレクトする
  before_action :authenticate_user!, only: :index

  def index; end
end

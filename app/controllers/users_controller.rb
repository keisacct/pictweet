class UsersController < ApplicationController
    def show
        @nickname = current_user.nickname  # @nicknameはcurrent_userを利用し、現在ログインしているユーザーが持つnicknameカラムの値を取得。
        @tweets = current_user.tweets  # @tweetsも現在ログインしているユーザーのツイート投稿を取得して、インスタンス変数に代入している。
    end
end

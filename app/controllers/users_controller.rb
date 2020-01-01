class UsersController < ApplicationController
    def show
        # usersテーブルにitemテーブルを記述し検索は美学に反する？
        # @item = Item.where(user_id: current_user.id)
       @user = User.find(current_user.id)
    end
end

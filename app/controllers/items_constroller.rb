class ItemsController < ApplicationController

    #move_to_indexアクションの実行前アクションの設定、indexは除く
    before_action :move_to_index, exept: :index




    def index
        @items = Item.all
    end

    def new
        @item = Item.new
    end

    def create
        Item.create{name: item_params[:name], price: item_params[:price], user_id: current_user.id}
    end
    
    #サインインしていない場合にはindexへ飛ばすアクション
    def move_to_index
        redirect_to action: :index unless user_signed_in?
            
        end
    end

    private

    def item_params
        params.require(:item).permit(:name, :price)
    end


end

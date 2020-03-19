class MapsController < ApplicationController
    def index
    end

    def new
      @map = Map.new # フォーム用の空のインスタンスを生成する。
    end

    def create
      @map = Map.new(map_params) # ストロングパラメータを引数に
      if @map.save
        redirect_to @map, notice: "投稿を登録しました。"
      else
        render :new
      end
    end

    def show
      @map = Map.find(params[:id])
    end

  def edit
    @map = Map.find(params[:id])
  end
  def update
    @map = Map.find(params[:id])
    if @map.update(map_params)
      redirect_to @map, notice: "投稿を更新しました。"
    else
      render :edit
    end
  end

    private

    def map_params # ストロングパラメータを定義する
      params.require(:map).permit(:caption, :image)
    end
end

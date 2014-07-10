class MenuItemsController < ApplicationController
  def index
    @items = MenuItem.all.page(params[:page]).per(8)
  end

  def show
    @item = MenuItem.find(params[:id])
  end

  def vegetarian
    @items = MenuItem.vegetarian.page(params[:page]).per(8)
    render :index
  end
end

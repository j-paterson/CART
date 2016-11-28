class ItemsController < ApplicationController
  
  def item_params
    params.require(:user).permit(:piggybak_sellable_attributes)
  end

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    @item.name = params[:item][:name]
    @item.description = params[:item][:description]
    @item.price = params[:item][:price]
    @item.user = current_user
    if @item.valid?
      @item.save
      redirect_to '/items'
    else
      flash[:error] = @item.errors.full_messages.to_sentence
      redirect_to '/items/new'
    end
  end

  def delete
    item_to_delete = Item.find(params[:id])
    item_to_delete.destroy
    redirect_to '/items'
  end

  def show
    @item = Item.find(params[:id])

    respond_to do |format|
        format.html # show.html.erb
        format.xml { render :xml => @item }
    end
  end

end

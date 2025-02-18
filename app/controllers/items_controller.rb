class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all
    render({ :template => "item_templates/list" })
  end

  def backdoor
    @list_of_items = Item.all # Ensure this variable is always set
    render({ :template => "item_templates/backdoor" })
  end

  def create
    new_item = Item.new
    new_item.link_url = params[:query_link_url]
    new_item.link_description = params[:query_link_description]
    new_item.thumbnail_url = params[:query_thumbnail_url]
    new_item.save

    redirect_to("/")
  end
end

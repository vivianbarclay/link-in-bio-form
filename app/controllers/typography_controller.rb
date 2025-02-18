class TypographyController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "typography_templates/list" })
  end
end

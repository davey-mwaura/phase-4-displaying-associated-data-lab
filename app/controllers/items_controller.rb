class ItemsController < ApplicationController
    def index
      items = Item.all
      render json: items.as_json(include: { user: { only: [:id, :username, :city] } })
    end
  end

class SuppliesController < ApplicationController
  def index
    if !params[:camper_id].present?
      @title = "All Supplies:"
      @supplies = Supply.all
    else
      @camper = Camper.find(params[:camper_id])
      @title = "Supplies Brought by #{@camper.name}"
      @supplies = @camper.supplies
    end
  end
end

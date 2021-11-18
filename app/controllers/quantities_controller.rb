class QuantitiesController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @quantities = Quantity.all
  end

  def form
    puts @quantity.inspect
  end

  def create 
    puts params
    @quantity = Quantity.new
    @quantity.name = params[:name]

    if @quantity.save
      puts @quantity.inspect
      redirect_to "/quantities/index"
    else
      puts @quantity.errors.inspect
      redirect_to "/quantities/form"
    end
  end

  def edit
    @quantity = Quantity.where(id: params[:sadsad]).first
  end

  def update
    @quantity = Quantity.where(id: params[:sadsad]).first
      
    @quantity.name = params[:name]
    


    if @quantity.save
      redirect_to "/quantities/index"
    else 
      redirect_to "/quantities/#{@quantity.id}/edit"
    end


  end

    
  def destroy
    @quantity = Quantity.find(params['sadsad'])
    @quantity.destroy
    redirect_to  "/quantities/index"
  end

  
end

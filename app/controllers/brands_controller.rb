class BrandsController < ApplicationController
  
  skip_before_action :verify_authenticity_token
  
  def index
    @brands = Brand.all
  end

  def form
    puts @brand.inspect
  end

  def create 
    puts params
    @brand = Brand.new
    @brand.name = params[:name]
    @brand.quantity = params[:quantity]

    if @brand.save
      puts @brand.inspect
      redirect_to "/brands/index"
    else
      puts @brand.errors.inspect
      redirect_to "/brands/form"
    end
  end

  def edit
    @brand = Brand.where(id: params[:sadsad]).first
  end

  def update
    @brand = Brand.where(id: params[:sadsad]).first
      
    @brand.name = params[:name]
    @brand.quantity = params[:quantity]


    if @brand.save
      redirect_to "/brands/index"
    else 
      redirect_to "/brands/#{@brand.id}/edit"
    end


  end


   
  def destroy
    @brand = Brand.find(params['sadsad'])
    @brand.destroy
    redirect_to  "/brands/index"
  end

end

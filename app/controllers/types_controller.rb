class TypesController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @types = Type.all
  end

  def form
    puts @type.inspect
  end

  def create 
    puts params
    @type = Type.new
    @type.name = params[:name]

    

    if @type.save
      puts @type.inspect
      redirect_to "/types/index"
    else
      puts @type.errors.inspect
      redirect_to "/types/form"
    end
  end

  def edit
    @type = Type.where(id: params[:sadsad]).first
  end

  def update
    @type = Type.where(id: params[:sadsad]).first
      
    @type.name = params[:name]

    


    if @type.save
      redirect_to "/types/index"
    else 
      redirect_to "/types/#{@type.id}/edit"
    end


  end


   
  def destroy
    @type = Type.find(params['sadsad'])
    @type.destroy
    redirect_to  "/types/index"
  end

end

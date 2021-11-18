class EmployeesController < ApplicationController

  skip_before_action :verify_authenticity_token
  
  def index
    @employees = Employee.all
  end

  def form
    puts @employee.inspect
    @brands = Brand.all
    @quantities = Quantity.all
    @types = Type.all

  end

  def create 
    puts params
    @employee = Employee.new
    @employee.name = params[:name]
    @employee.phone = params[:phone]
    @employee.brand_id = params[:brand_id]
    @employee.quantity_id = params[:quantity_id]
    @employee.type_id = params[:type_id]

    if @employee.save
      puts @employee.inspect
      redirect_to "/"
    else
      puts @employee.errors.inspect
      redirect_to "/employees/form"
    end
  end

  def edit
    @employee = Employee.where(id: params[:sadsad]).first
    @brands = Brand.all
    @quantities = Quantity.all
    @types = Type.all

  end

  def update
    @employee = Employee.where(id: params[:sadsad]).first
      
    @employee.name = params[:name]
    @employee.phone = params[:phone]
    @employee.brand_id = params[:brand_id]
    @employee.quantity_id = params[:quantity_id]
    @employee.type_id = params[:type_id]


    if @employee.save
      redirect_to "/"
    else 
      redirect_to "/employees/#{@employee.id}/edit"
    end


  end
 
  def destroy
    @employee = Employee.find(params['sadsad'])
    @employee.destroy
    redirect_to  "/employees/index"
  end


end

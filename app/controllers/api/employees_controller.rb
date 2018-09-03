class Api::EmployeesController < ApplicationController

  def index
    @employees = Employee.all
    render 'index.json.jbuilder'
  end

  def create
    @employee = Employee.new(
                              name: params[:name],
                              title: params[:title]
                            )
    @employee.save
    render 'show.json.jbuilder'
  end

  def show
    @employee = Employee.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.name = params[:name] || @employee.name
    @employee.title = params[:title] || @employee.title
    @employee.save
    render 'show.json.jbuilder'
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    render json: ({message: 'Employee Record Destroyed'})
  end

end

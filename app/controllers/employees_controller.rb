class EmployeesController < ApplicationController
    def index
        @employees =  Employee.all
    end
    def show
        @employees = Employee.find(params[:id])
    end
    def new
        @employees = Employee.new
    end
    def create
        @employees = Employee.new(employee_params)
        if @employees.save
            redirect_to employees_path
        else
            render :new
        end
    end
    def edit
        @employees = Employee.find(params[:id])
    end
    def update
        @employees = Employee.find(params[:id])
        if @employees.update(employee_params)
          redirect_to employees_path
        else
          render :edit
        end
    end    
    def destroy
        @employees = Employee.find(params[:id])
        @employees.destroy
         redirect_to employees_path 
    end
    private
    def employee_params
        params.require(:employee).permit(:name, :age, :gender,:designation)
    
    end

    GENDER = ["Male", "Female"]
end

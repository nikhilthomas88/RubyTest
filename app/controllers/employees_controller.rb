class EmployeesController < ApplicationController

    ## Get employee details
	def index
		per_page = params[:per_page].blank? ? 100 : params[:per_page].to_i
		@employees = Employee.select(:fullname, :e_number, :created_at).all.order(id: :desc).paginate(page: params[:page], per_page: per_page)
	end
end

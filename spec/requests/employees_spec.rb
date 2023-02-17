require 'rails_helper'

RSpec.describe EmployeesController, type: :request do
  describe "GET #index" do

    before do
      get "/employees"
      @json_emp_details = JSON.parse(response.body)['employees']
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "returns response in json format" do
      expect(response.content_type).to eq("application/json; charset=utf-8")
    end

    it "JSON  response expected employee attributes" do
      expect(@json_emp_details[0].keys).to match_array(["fullname", "e_number", "created_at"])
    end
   
    it "returns 100 records" do
      expect(@json_emp_details.size).to eq(100)
    end

    it "returns 100 records in desc order" do
      employees = Employee.select(:e_number).order(created_at: :desc).limit(100).offset(0).pluck(:e_number)
      resp_emp =@json_emp_details.map {|e| e["e_number"]}
      
      expect(resp_emp).to match_array(employees)
    end
  end
end
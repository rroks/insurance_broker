require 'rest-client'
require 'json'
class PerosonsController < ApplicationController
  def new
  	@peroson = Peroson.new
  end

  def create
  	@peroson = Peroson.new(peroson_params)
    send_application
    render plain: respose.code
  end

  def insurance_form
    @peroson = Peroson.new(peroson_params)
  end

  def send_application
  	respose = RestClient.post 'http://localhost:3001/api/perosons.json', params[:peroson]
  end

  private
    def peroson_params
      params.permit(:title, 
                    :forename, 
                    :surname, 
                    :email, 
                    :date_of_birth, 
                    :telephone_number, 
                    :street, 
                    :city, 
                    :county, 
                    :postcode, 
                    :license_type, 
                    :license_period, 
                    :occupation,
                    vehicle_attributes:[:vehicle_registration, :estimated_annual_mileage, :estimated_vehicle_value, :typical_parking_location, :policy_start_date],
                    driver_histories_attributes:[:date_of_incident, :total_value_of_claim, :incident_type, :description])
    end
end

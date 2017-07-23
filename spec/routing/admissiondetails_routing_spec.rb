require "rails_helper"

RSpec.describe AdmissiondetailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admissiondetails").to route_to("admissiondetails#index")
    end


    it "routes to #show" do
      expect(:get => "/admissiondetails/1").to route_to("admissiondetails#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/admissiondetails").to route_to("admissiondetails#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admissiondetails/1").to route_to("admissiondetails#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admissiondetails/1").to route_to("admissiondetails#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admissiondetails/1").to route_to("admissiondetails#destroy", :id => "1")
    end

  end
end

require 'rails_helper'

RSpec.describe Admissiondetail, type: :model do
 before :each do
		@add = Admissiondetail.new
	end
  
  
  it "is valid with valid arrtributes" do
  	@add.cost = "something"
  	@add.person_id= "something"
  	@add.admission_id = "something"
  	@add.needed_document = "something"
  	@add.last_admission_date = "something"
  	expect(@add).to be_valid
  end

  it "is invalid without a cost" do
  	@add.cost = nil
  	expect(@add).to_not be_valid
  end

  it "is invalid without an person_id" do
  	@add.person_id = nil
  	expect(@add).to_not be_valid
  end

  it "is invalid without a admission_id" do
  	@add.admission_id = nil
  	expect(@add).to_not be_valid
  end

  it "is invalid without an needed_document" do
  	@add.needed_document = nil
  	expect(@add).to_not be_valid
  end

  it "is invalid without an last_admission_date" do
  	@add.last_admission_date = nil
  	expect(@add).to_not be_valid
  end

end

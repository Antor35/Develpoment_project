FactoryGirl.define do
  factory :admissiondetail do
    cost { Faker::Lorem.word }
    person_id { Faker::Lorem.word }
    admission_id { Faker::Lorem.word }
    needed_document { Faker::Lorem.word }
    last_admission_date { Faker::Lorem.word }
    #cost "MyString"
    #person_id "MyString"
    #admission_id "MyString"
    #needed_document "MyString"
    #last_admission_date "MyString"
  end
end

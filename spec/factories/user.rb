FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@example.com"
  end
end

FactoryGirl.define do
  factory :user, class: :User do
    email # user email address ?
    password '123455678' # user password ?
    password_confirmation '123455678' # user password confirmation?
  end
end 

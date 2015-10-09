FactoryGirl.define do
  factory :user do
    email "test_email@gmail.com"
    password "12345678"
    password_confirmation "12345678"
    created_at Date.today
    updated_at Date.today
    username "Rapsheet"
    state_id "1"
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email {'test@somewhere.com'}
    password {'somegreatpassword'}
    password_confirmation {'somegreatpassword'}
  end
end

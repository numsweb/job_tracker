FactoryGirl.define do
  factory :job do
    first_name "John"
    last_name  "Doe"
    position "test position",
    status: 1
    company: "New Company"
  end
end
Given /I have entered (.*) into the calculator/ do |n|
  @calculator = Calculator.new
  @calculator.push(n.to_i)
end

Given(/^I have then entered (\d+) into the calculator$/) do |n|
  @calculator.push(n.to_i)
end

When(/^I press add$/) do
  @calculator.add
end

Then(/^the result should be (\d+) on the screen$/) do |arg1|
  @calculator.result
end


When(/^I press multiply$/) do
  @calculator.multiply
end

When(/^I press divide/) do
  @calculator.divide
end


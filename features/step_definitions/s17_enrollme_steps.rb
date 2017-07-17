Given /I? type "(.*)"/ do |text|
  puts text
end

Given /I? click the following fields: (.*)/ do |fields|
  click(fields)
end

Given /I? click the (.*) text field/ do |field|
  click(field)
end

Given /I? upload the image (.*)/ do |image|
  pending
end

Then /I? should see the image (.*)/ do |image|
  expect(page.body.index(image))
end

Then /I? should see the file (.*)/ do |file|
  expect(page.body.index(file))
end

And /the table should list the teams with (?:all)? (.*) first, then (?:the)? (.*)/ do |first, last|
  pending
end

Given /I enter "([^"]*)" into (?:the)? "([^"]*)"/ do |text, field|
  pending
end

Then /It should display the teams with (.*) as members/ do |members|
  pending
end

Given /I press on row (.*)/ do |row_num|
  pending
end

Then /I visit the team profile of the team on (.*)/ do |row_num|
  pending
end

#requires capture - bummer
When /^(.*?) wants to adopt a puppy$/ do |person|
  visit(HomePage)
end

When(/^(.*?) fills in checkout information$/) do |person|
  navigate_to(CheckoutPage).fill_out_info
end

Then(/^(?:his|her) email is "(.*?)"$/) do |email|
  on(CheckoutPage).email.should == email
end

#Seems repetive - auto generate or magically add on the backend?
Transform /^(Steve|Alicia)$/ do |persona|
  DataMagic.load "#{persona.downcase}.yml"
end


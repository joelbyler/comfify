When /^I get help for "([^"]*)"$/ do |app_name|
  @app_name = app_name
  step %(I run `#{app_name} help`)
end

Given(/^I have a directory "([^"]*)" that I want to link$/) do |dir_name|
  FileUtils::mkdir_p("#{dir_name}/.somefilefoo")
end

When(/^I link the "([^"]*)" directory with "([^"]*)"$/) do |dir_name, app_name|
  @app_name = app_name
  step %(I run `#{app_name} link #{dir_name}`)
end

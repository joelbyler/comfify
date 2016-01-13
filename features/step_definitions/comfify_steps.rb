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

Then(/^a symlink exists for "([^"]*)" in my home directory$/) do |dir_name|
  expect(File.symlink?(File.expand_path("#{Dir.home}/#{dir_name}"))).to eq(true)
end

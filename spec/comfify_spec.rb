require 'spec_helper'
require 'fileutils'

describe Comfify, :type => :aruba do
  include FakeFS::SpecHelpers
  before(:each) do
    puts 'running before'
    begin
      FileUtils.rm_rf("#{Dir.home}/.foo")
    end
  end

  it 'has a version number' do
    expect(Comfify::VERSION).not_to be nil
  end

  it 'creates a symlink' do
    expect {
      FileUtils::mkdir_p('foo/.foo')
    }.to change {
      Dir.exists?('foo/.foo')
    }.from(false).to(true)

  #   expect {
  #     `bundle exec comfify link foo`
  #   }.to change {
  #     Dir.exists?("#{Dir.home}/.foo")
  #   }.from(false).to(true)
  end
end

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
end

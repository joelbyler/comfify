require 'spec_helper'
require 'fileutils'

describe Comfify, :type => :aruba, fakefs: true do

  it 'has a version number' do
    expect(Comfify::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to be_falsey
  end

  it 'creates a symlink' do
    FileUtils::mkdir_p('vim/.vim')
    expect {
      `comfify vim`
    }.to change {
      Dir.exists?("#{Dir.home}/.vim")
    }.from(false).to(true)
  end
end

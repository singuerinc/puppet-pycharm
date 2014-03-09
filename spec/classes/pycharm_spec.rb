require 'spec_helper'

describe 'pycharm' do

  version = '3.1.1'
  edition_real = 'professional'

  it do
    should contain_package('PyCharm').with({
      :provider => 'appdmg_eula',
      :source   => "http://download.jetbrains.com/python/pycharm-#{edition_real}-#{version}.dmg"
    })
  end
end

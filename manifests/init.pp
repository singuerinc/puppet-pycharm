# Public: Installs PyCharm
#
# Usage:
#
#  class { 'pycharm':
#    edition => 'community',
#    version => '3.1.1'
#  }
#
class pycharm($edition='community', $version='3.1.1') {

  case $edition {
    'community': {
      $edition_real = 'community'
    }
    'professional': {
      $edition_real = 'professional'
    }
    default: {
      fail('Class[pycharm]: parameter edition must be community or professional')
    }
  }

  package { 'PyCharm':
    provider => 'appdmg_eula',
    source   => "http://download.jetbrains.com/python/pycharm-${edition_real}-${version}.dmg"
  }
}

require 'aliyun_old/oss/version'
require 'aliyun_old/oss/struct'
require 'aliyun_old/oss/error'

module AliyunOld
  module Oss
    autoload :Utils,            'aliyun_old/oss/utils'
    autoload :Client,           'aliyun_old/oss/client'
    autoload :Authorization,    'aliyun_old/oss/authorization'
  end
end

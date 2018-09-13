module AliyunOld
  module Oss
    module Struct
      class Base
        def initialize(attributes = {})
          attributes.each do |key, value|
            m = "#{Utils.underscore(key)}=".to_sym
            send(m, value) if self.respond_to?(m)
          end
        end
      end
    end
  end
end

require 'aliyun_old/oss/struct/bucket'
require 'aliyun_old/oss/struct/object'
require 'aliyun_old/oss/struct/multipart'

require 'aliyun_old/oss/struct/cors'
require 'aliyun_old/oss/struct/lifecycle'
require 'aliyun_old/oss/struct/referer'
require 'aliyun_old/oss/struct/website'
require 'aliyun_old/oss/struct/logging'

require 'aliyun_old/oss/struct/part'

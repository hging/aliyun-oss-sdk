require 'aliyun_old/oss/xml_generator'
# Function Based
require 'aliyun_old/oss/api/buckets'
require 'aliyun_old/oss/api/bucket_property'
require 'aliyun_old/oss/api/bucket_objects'
require 'aliyun_old/oss/api/bucket_multiparts'
# Object Based
require 'aliyun_old/oss/client/clients'

require 'aliyun_old/oss/http'

module AliyunOld
  module Oss
    class Client
      include AliyunOld::Oss::Api::Buckets
      include AliyunOld::Oss::Api::BucketProperty
      include AliyunOld::Oss::Api::BucketObjects
      include AliyunOld::Oss::Api::BucketMultiparts

      attr_reader :access_key, :secret_key, :bucket

      # Initialize a object
      #
      # @example
      #   AliyunOld::Oss::Client.new("ACCESS_KEY", "SECRET_KEY", host: "oss-cn-beijing.aliyuncs.com", bucket: 'oss-sdk-beijing')
      #
      # @param access_key [String] access_key obtained from aliyun
      # @param secret_key [String] secret_key obtained from aliyun
      # @option options [String] :host host for bucket's data center
      # @option options [String] :bucket Bucket name
      #
      # @return [Response]
      def initialize(access_key, secret_key, options = {})
        @access_key = access_key
        @secret_key = secret_key
        @options = options
        @bucket = options[:bucket]

        @services = {}
      end

      private

      def http
        @http ||= Http.new(access_key, secret_key, @options[:host])
      end
    end
  end
end

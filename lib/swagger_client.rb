# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/order'
require 'swagger_client/models/user'
require 'swagger_client/models/category'
require 'swagger_client/models/tag'
require 'swagger_client/models/pet'
require 'swagger_client/models/api_response'

# APIs
require 'swagger_client/api/user_api'
require 'swagger_client/api/store_api'
require 'swagger_client/api/pet_api'

module SwaggerClient
  class << self
    # Customize default settings for the SDK using block.
    #   SwaggerClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end

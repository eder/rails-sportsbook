# frozen_string_literal: true

require 'rails_helper'

RSpec.configure do |config|
  config.swagger_root = "#{Rails.root}/swagger"
  config.swagger_docs = {
    'v1/swagger.json' => {
      swagger: '2.0',
      info: {
        title: 'API V1',
        version: 'v1'
      },
      paths: {}
    }
  }
end

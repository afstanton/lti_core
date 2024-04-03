# frozen_string_literal: true

require 'shale'

module LtiCore
  class ToolPlatform < Shale::Mapper
    attribute :guid, Shale::Type::String
    attribute :contact_email, Shale::Type::String
    attribute :description, Shale::Type::String
    attribute :name, Shale::Type::String
    attribute :url, Shale::Type::String
    attribute :product_family_code, Shale::Type::String
    attribute :version, Shale::Type::String

    json do
      map 'guid', to: :guid, schema: { required: true }
      map 'contact_email', to: :contact_email
      map 'description', to: :description
      map 'name', to: :name
      map 'url', to: :url
      map 'product_family_code', to: :product_family_code
      map 'version', to: :version
    end
  end
end

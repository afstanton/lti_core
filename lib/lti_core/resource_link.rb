# frozen_string_literal: true

require 'shale'

module LtiCore
  class ResourceLink < Shale::Mapper
    attribute :id, Shale::Type::String
    attribute :description, Shale::Type::String
    attribute :title, Shale::Type::String

    json do
      map 'id', to: :id, schema: { required: true }
      map 'description', to: :description
      map 'title', to: :title
    end
  end
end

# frozen_string_literal: true

require "shale"

module LtiCore
  class Context < Shale::Mapper
    attribute :id, Shale::Type::String
    attribute :label, Shale::Type::String
    attribute :title, Shale::Type::String
    attribute :type, Shale::Type::String, collection: true

    json do
      map "id", to: :id
      map "label", to: :label
      map "title", to: :title
      map "type", to: :type
    end
  end
end

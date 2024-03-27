# frozen_string_literal: true

require "shale"

module LtiCore
  class LaunchPresentation < Shale::Mapper
    attribute :document_target, Shale::Type::String
    attribute :height, Shale::Type::Integer
    attribute :width, Shale::Type::Integer
    attribute :return_url, Shale::Type::String

    json do
      map "document_target", to: :document_target
      map "height", to: :height
      map "width", to: :width
      map "return_url", to: :return_url
    end
  end
end

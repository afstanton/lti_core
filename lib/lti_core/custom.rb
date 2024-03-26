# frozen_string_literal: true

require "shale"
module LtiCore
  class Custom < Shale::Mapper
    attribute :xstart, Shale::Type::String
    attribute :request_url, Shale::Type::String

    json do
      map "xstart", to: :xstart
      map "request_url", to: :request_url
    end
  end
end

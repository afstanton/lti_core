# frozen_string_literal: true

require 'shale'

module LtiCore
  # :reek:Attribute
  class Message < Shale::Mapper
    class << self; attr_accessor :registered_types end
    @registered_types = {}

    attribute :iss, Shale::Type::String
    attribute :sub, Shale::Type::String
    attribute :aud, Shale::Type::String, collection: true
    attribute :exp, Shale::Type::Integer
    attribute :iat, Shale::Type::Integer
    attribute :azp, Shale::Type::String
    attribute :nonce, Shale::Type::String

    json do
      map 'iss', to: :iss
      map 'sub', to: :sub
      map 'aud', to: :aud
      map 'exp', to: :exp
      map 'iat', to: :iat
      map 'azp', to: :azp
      map 'nonce', to: :nonce
    end
  end
end

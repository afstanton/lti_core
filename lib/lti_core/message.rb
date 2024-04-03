# frozen_string_literal: true

require 'shale'

module LtiCore
  # :reek:Attribute
  class Message < Shale::Mapper
    class << self; attr_accessor :registered_types end
    @registered_types = {}
  end
end

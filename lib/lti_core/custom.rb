# frozen_string_literal: true

require "shale"
module LtiCore
  class Custom < Shale::Mapper
    # This class can have any attributes you want to extract from the custom field
    # in the LTI launch request. The attributes should be defined as Shale::Type::String
    # I need to write code to dynamically extract the custom attributes from the custom field
  end
end

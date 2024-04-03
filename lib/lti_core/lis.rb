# frozen_string_literal: true

require 'shale'
module LtiCore
  class Lis < Shale::Mapper
    attribute :person_sourcedid, Shale::Type::String
    attribute :course_offering_sourcedid, Shale::Type::String
    attribute :course_section_sourcedid, Shale::Type::String

    json do
      map 'person_sourcedid', to: :person_sourcedid
      map 'course_offering_sourcedid', to: :course_offering_sourcedid
      map 'course_section_sourcedid', to: :course_section_sourcedid
    end
  end
end

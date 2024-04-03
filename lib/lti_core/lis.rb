# frozen_string_literal: true

require 'shale'
module LtiCore
  class Lis < Shale::Mapper
    attribute :person_sourcedid, Shale::Type::String
    attribute :course_offering_sourcedid, Shale::Type::String
    attribute :course_section_sourcedid, Shale::Type::String
    attribute :outcome_service_url, Shale::Type::String
    attribute :person_name_full, Shale::Type::String
    attribute :person_name_given, Shale::Type::String
    attribute :person_name_family, Shale::Type::String
    attribute :person_contact_email_primary, Shale::Type::String
    attribute :result_sourcedid, Shale::Type::String

    json do
      map 'person_sourcedid', to: :person_sourcedid
      map 'course_offering_sourcedid', to: :course_offering_sourcedid
      map 'course_section_sourcedid', to: :course_section_sourcedid
      map 'outcome_service_url', to: :outcome_service_url
      map 'person_name_full', to: :person_name_full
      map 'person_name_given', to: :person_name_given
      map 'person_name_family', to: :person_name_family
      map 'person_contact_email_primary', to: :person_contact_email_primary
      map 'result_sourcedid', to: :result_sourcedid
    end
  end
end

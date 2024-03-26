# frozen_string_literal: true

require "shale"

require_relative "context"
require_relative "custom"
require_relative "launch_presentation"
require_relative "lis"
require_relative "resource_link"
require_relative "tool_platform"

module LtiCore
  class LtiResourceLinkRequest < Shale::Mapper
    attribute :iss, Shale::Type::String
    attribute :sub, Shale::Type::String
    attribute :aud, Shale::Type::String, collection: true
    attribute :exp, Shale::Type::Integer
    attribute :iat, Shale::Type::Integer
    attribute :azp, Shale::Type::String
    attribute :nonce, Shale::Type::String
    attribute :name, Shale::Type::String
    attribute :given_name, Shale::Type::String
    attribute :family_name, Shale::Type::String
    attribute :middle_name, Shale::Type::String
    attribute :picture, Shale::Type::String
    attribute :email, Shale::Type::String
    attribute :locale, Shale::Type::String
    attribute :deployment_id, Shale::Type::String
    attribute :message_type, Shale::Type::String
    attribute :version, Shale::Type::String
    attribute :roles, Shale::Type::String, collection: true
    attribute :role_scope_mentor, Shale::Type::String, collection: true
    attribute :context, LtiCore::Context
    attribute :resource_link, LtiCore::ResourceLink
    attribute :tool_platform, LtiCore::ToolPlatform
    attribute :target_link_uri, Shale::Type::String
    attribute :launch_presentation, LtiCore::LaunchPresentation
    attribute :custom, LtiCore::Custom
    attribute :lis, LtiCore::Lis

    json do
      map "iss", to: :iss
      map "sub", to: :sub
      map "aud", to: :aud
      map "exp", to: :exp
      map "iat", to: :iat
      map "azp", to: :azp
      map "nonce", to: :nonce
      map "name", to: :name
      map "given_name", to: :given_name
      map "family_name", to: :family_name
      map "middle_name", to: :middle_name
      map "picture", to: :picture
      map "email", to: :email
      map "locale", to: :locale
      map "https://purl.imsglobal.org/spec/lti/claim/deployment_id", to: :deployment_id
      map "https://purl.imsglobal.org/spec/lti/claim/message_type", to: :message_type
      map "https://purl.imsglobal.org/spec/lti/claim/version", to: :version
      map "https://purl.imsglobal.org/spec/lti/claim/roles", to: :roles
      map "https://purl.imsglobal.org/spec/lti/claim/role_scope_mentor", to: :role_scope_mentor
      map "https://purl.imsglobal.org/spec/lti/claim/context", to: :context
      map "https://purl.imsglobal.org/spec/lti/claim/resource_link", to: :resource_link
      map "https://purl.imsglobal.org/spec/lti/claim/tool_platform", to: :tool_platform
      map "https://purl.imsglobal.org/spec/lti/claim/target_link_uri", to: :target_link_uri
      map "https://purl.imsglobal.org/spec/lti/claim/launch_presentation", to: :launch_presentation
      map "https://purl.imsglobal.org/spec/lti/claim/custom", to: :custom
      map "https://purl.imsglobal.org/spec/lti/claim/lis", to: :lis
    end
  end
end

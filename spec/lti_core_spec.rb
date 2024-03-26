# frozen_string_literal: true

RSpec.describe LtiCore do
  let(:lti) { LtiCore::LtiResourceLinkRequest.from_json(lti_json) }
  let(:lti_message) { JSON.parse(lti_json) }
  let(:lti_json) { File.read(filename) }
  let(:filename) { File.join(File.dirname(__FILE__), "fixtures", "lti_message.json") }

  it "has a version number" do
    expect(LtiCore::VERSION).not_to be_nil
  end

  it "parses a JSON LTI message" do
    expect(JSON.parse(lti.to_json)).to match(lti_message)
  end
end

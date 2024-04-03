# frozen_string_literal: true

RSpec.describe LtiCore do
  let(:lti_full) { LtiCore::LtiResourceLinkRequest.from_json(lti_json_full) }
  let(:lti_message_full) { JSON.parse(lti_json_full) }
  let(:lti_json_full) { File.read(filename_full) }
  let(:filename_full) { File.join(File.dirname(__FILE__), 'fixtures', 'lti_message_full.json') }
  let(:lti_no_custom) { LtiCore::LtiResourceLinkRequest.from_json(lti_json_no_custom) }
  let(:lti_message_no_custom) { JSON.parse(lti_json_no_custom) }
  let(:lti_json_no_custom) { File.read(filename_no_custom) }
  let(:filename_no_custom) { File.join(File.dirname(__FILE__), 'fixtures', 'lti_message_no_custom.json') }

  it 'has a version number' do
    expect(LtiCore::VERSION).not_to be_nil
  end

  #   it "parses a full JSON LTI message" do
  #     expect(JSON.parse(lti_full.to_json)).to match(lti_message_full)
  #   end

  it 'parses a JSON LTI message with no custom data' do
    expect(JSON.parse(lti_no_custom.to_json)).to match(lti_message_no_custom)
  end
end

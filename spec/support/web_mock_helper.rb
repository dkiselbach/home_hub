# frozen_string_literal: true

module WebMockHelper
  def self.response_body(path)
    pathname = File.join(%w[spec webmock], path)
    File.read(pathname)
  end
end

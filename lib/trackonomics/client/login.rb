# frozen_string_literal: true

module Trackonomics
  module Login
    def login
      response = HTTP.headers(login_headers).post("#{base_url}/login", body: login_body)
      response.dig('user', 'authentication_token')
    end

    def login_body
      "email=#{email}&password=#{password}&env=#{env}"
    end

    def login_headers
      { 'system_token': system_token, 'Content-Type': 'application/x-www-form-urlencoded' }
    end
  end
end

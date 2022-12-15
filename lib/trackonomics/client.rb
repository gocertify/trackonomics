# frozen_string_literal: true

require 'json'
require 'pry'
require 'cgi'
require 'uri'
require 'http'
require_relative 'client/login'
require_relative 'client/status'
require_relative 'client/transaction'

module Trackonomics
  class Client
    include Trackonomics::Login

    def initialize(options:)
      @env = options[:env]
      @email = CGI.escape(options[:email])
      @password = options[:password]
      @system_token = options[:system_token]

      # @headers = HTTP.headers(

      # )
    end

    def base_url
      Trackonomics::BASE_URL
    end

    attr_reader :env, :email, :password, :system_token
  end
end

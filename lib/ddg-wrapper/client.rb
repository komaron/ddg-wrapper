module DDG
  module Wrapper
    class Client
      attr_accessor :url
      API_URL = 'http://api.duckduckgo.com/'

      def initialize
        @url = API_URL
      end

      def query(query)
        params = build_params(query)
        data = get_data(params)
        data
      end

      def build_params(query, format='json',pretty='1')
        params = {
          q: 			query,
          format: format,
          pretty: pretty
        }
        params
      end

      def get_data(params)
        uri = URI(url)
        uri.query = URI.encode_www_form(params)
        res = Net::HTTP.get_response(uri)

        JSON.parse(res.body)
      end
    end
  end
end
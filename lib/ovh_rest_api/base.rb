module OvhRestApi
  class Base
    def self.api_uri country_code
      raise ForbiddenCountryException unless [:ca, :eu].include? country_code
      "https://#{country_code}.api.ovh.com/1.0"
    end
  end
end
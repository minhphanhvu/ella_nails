class Root < Grape::API
  version 'v1', using: :path
  format :json
  prefix :api

  mount BookingServiceApi
end

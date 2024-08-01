module NailService
  class API_v1 < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api

    mount NailService::BookingService
  end
end

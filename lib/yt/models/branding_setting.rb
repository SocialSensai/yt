require 'yt/models/base'

module Yt
  module Models
    # @private
    # Encapsulates channel data that is relevant for YouTube Partners linked
    # with the channel.
    # @see https://developers.google.com/youtube/v3/docs/channels#contentOwnerDetails
    class BrandingSetting < Base
      def initialize(options = {})
        @data = options[:data]['channel'].merge options[:data]['image']
      end

      has_attiribute :unsubscribed_trailer

    end
  end
end
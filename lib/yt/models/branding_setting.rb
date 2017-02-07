require 'yt/models/base'

module Yt
  module Models
    # @private
    # Encapsulates channel data that is relevant for YouTube Partners linked
    # with the channel.
    # @see https://developers.google.com/youtube/v3/docs/channels#contentOwnerDetails
    class BrandingSetting < Base
      def initialize(options = {})
        if options[:data].is_a?(Hash)
          @data = options[:data]['channel'].merge options[:data]['image']
        else
          @data = {}
        end
      end

      has_attribute :unsubscribed_trailer

    end
  end
end
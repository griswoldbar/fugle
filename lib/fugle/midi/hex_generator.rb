module Fugle
  module Midi
    class HexGenerator
      def self.generate(piece)
        new(piece).generate
      end

      def initialize(piece)
        @piece = piece
      end

      def generate
        "hex"
      end
    end
  end
end
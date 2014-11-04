module Fugle
  module Midi
    class FileBuilder
      def self.build(hex, filename)
        new(hex, filename).build
      end

      def initialize(hex, filename)
        @hex = hex
        @filename = filename
      end

      def build
        File.open(@filename,'w') do |f|
          @hex.scan(/../).each do |byte|
            f.print byte.hex.chr
          end
        end
      end
    end
  end
end
# See COPYING for license information.
module SoftLayer
  module ObjectStorage
    class Path

      attr_reader :container
      attr_reader :path
      def initialize(container, path = '')
        @container = container
        @path = path
      end

      def objects
        container.objects(:path => path)
      end

      def search(options)
        options[:path] = path
        container.search(options)
      end

    end
  end
end

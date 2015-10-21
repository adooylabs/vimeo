module Vimeo
  module Simple

    class Categories < Vimeo::Simple::Base
      def self.all
        get("/categories")
      end

      def self.category(category_name)
        get("/categories/#{category_name}")
      end

      def self.channels(category_name)
        get("/categories/#{category_name}/channels")
      end

      def self.groups(category_name)
        get("/categories/#{category_name}/groups")
      end

      def self.videos(category_name)
        get("/categories/#{category_name}/videos")
      end

      def self.find_video(category_name, video_id)
        get("/categories/#{category_name}/videos/#{video_id}")
      end
    end

  end # Simple
end # Vimeo

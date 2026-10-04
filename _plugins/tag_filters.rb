module Jekyll
  module TagFilters
    def sort_tags_by_count(input)
      return input unless input.respond_to?(:sort_by)

      input.sort_by do |tag|
        tag_name = tag.is_a?(Array) && tag[0].respond_to?(:to_s) ? tag[0].to_s : tag.to_s
        tag_count = tag.is_a?(Array) && tag[1].respond_to?(:size) ? tag[1].size : 0

        [-tag_count, tag_name.downcase]
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::TagFilters)

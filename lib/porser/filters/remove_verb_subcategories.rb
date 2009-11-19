module Porser
  module Filters
    class RemoveVerbSubcategories
      def run(sentence)
        map(sentence.root_node)
        sentence
      end

    protected
      def map(node)
        tag = (node.tag =~ /^V_/ ? "V" : node.tag)

        case node
        when Corpus::Category
          Corpus::Category.new(tag, node.children.map { |child| map(child) })
        when Corpus::PartOfSpeech
          Corpus::PartOfSpeech.new(tag, node.word, node.extra)
        end
      end
    end
  end
end
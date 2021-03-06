# frozen_string_literal: true
module Valkyrie::Persistence::Fedora
  class QueryService
    class << self
      def find_all
        Valkyrie::Persistence::Fedora::Queries::FindAllQuery.new.run
      end

      def find_by_id(id)
        Valkyrie::Persistence::Fedora::Queries::FindByIdQuery.new(id).run
      end

      def find_members(book)
        Valkyrie::Persistence::Fedora::Queries::FindMembersQuery.new(book).run
      end
    end
  end
end

require 'ddtrace/contrib/active_record/events/instantiation'
require 'ddtrace/contrib/active_record/events/sql'

module Datadog
  module Contrib
    module ActiveRecord
      # Defines collection of instrumented ActiveRecord events
      module Events
        ALL = [
          Events::Instantiation,
          Events::SQL
        ].freeze

        module_function

        def all
          self::ALL
        end

        def subscriptions
          all.collect(&:subscriptions).collect(&:to_a).flatten
        end

        def subscribe!(events)
          return unless events

          events
            .map(&:capitalize)
            .map(&Events.method(:const_get))
            .each(&:subscribe!)
        end
      end
    end
  end
end

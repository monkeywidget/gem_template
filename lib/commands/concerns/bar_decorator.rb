module Foo
  module BarDecorator
    extend ActiveSupport::Concern
    included do
      class_option :max_daily_archives,
                   aliases: %w(-b --bar-option-name),
                   type: :numeric,
                   default: 10,
                   required: false,
                   desc: 'description for bar here'
    end
  end
end

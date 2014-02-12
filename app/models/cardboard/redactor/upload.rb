module Cardboard
  module Redactor
    class Upload < ActiveRecord::Base
      self.table_name = 'cardboard_redactor_uploads'
      validates :file, presence: true

    end
  end
end
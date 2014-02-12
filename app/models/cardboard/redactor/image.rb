module Cardboard
  module Redactor
    class Image < Upload
      dragonfly_accessor :file do 
        after_assign  :resize_image 
      end

      validates_property :format, :of => :file, :in => ['jpeg', 'jpg', 'png', 'gif']
      validates_property :image?, :of => :file, :as => true
      validates :file, presence: true
    private

      def resize_image
        self.file.process!(:resize, '800x500>') if file_uid? #max image size 
      end

    end
  end
end
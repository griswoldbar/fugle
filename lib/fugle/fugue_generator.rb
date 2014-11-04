require 'fugle/subject_generator'
module Fugle
  class FugueGenerator
    def self.generate(*args)
      new(*args).generate
    end

    def initialize(config, subject_generator_class = SubjectGenerator)
      @config = config
      @subject_generator = subject_generator_class.new(@config["subject"])
    end

    def generate
      generate_subject
    end
    
    private
    def generate_subject
      @subject = @subject_generator.generate
    end
  end
end
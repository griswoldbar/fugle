require "fugle/version"
require "fugle/fugue_generator"
require "fugle/midi/hex_generator"
require "fugle/midi/file_builder"
require "yaml"

module Fugle
  ROOT = File.expand_path '../..', __FILE__
  DEFAULT_CONFIG_FILE = "#{ROOT}/config/default.yml"
  DEFAULT_OUTPUT_FILENAME = "fugle.mid"

  def self.generate(config_file=DEFUALT_CONFIG_FILE)
    @config = YAML.load_file(config_file)
    raw_fugue = FugueGenerator.generate(config["fugue"])
    midi_fugue = MidiGenerator.generate(raw_fugue)

    file_name = @config["output_filename"] || DEFAULT_OUTPUT_FILENAME
    MidiFileBuilder.build(midi_fugue, file_name)
  end
end

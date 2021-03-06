module Dots
  module Persistence
    include Thor::Actions

    # Run through every file in +~/.dots/config+ and symlink them to
    # +~/.+.
    def link_dot_files
      Dir[File.expand_path("~/.dots/config/*")].each do |config_file|
        persist_dot_file config_file
      end
    end

    # Moves the given +~/.file+ to the repo, while saving its original
    # location. It then symlinks the new location to the old location
    # so applications will continue to run.
    def persist_dot_file file_name
      dot_file = Dots::DotFile.new file_name

      if dot_file.save
        say "#{dot_file} saved to DOTS!"
      else
        say "Error: #{dot_file} could not be symlinked:"
        dot_file.errors.full_messages.each { |msg| say "- #{msg}" }
      end
    end

    # Restores the given configuration file that's in the repo back
    # to an unremembered state. Deletes the symlink and places the
    # file back to its perceived original location in +~/.file+.
    def forget_dot_file file_name
      dot_file = Dots::DotFile.find file_name

      if dot_file.destroy
        say "#{dot_file} is no longer being persisted."
      else
        say "Error: #{dot_file} could not be forgotten:"
        dot_file.errors.full_messages.each { |msg| say "- #{msg}" }
      end
    end
  end
end

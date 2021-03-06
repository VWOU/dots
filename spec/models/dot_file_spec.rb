require 'spec_helper'
require 'dots/dot_file'

describe Dots::DotFile do
  before do
    %x(echo "This is my config" >> ~/.dot_file)
    @file = Dots::DotFile.new "~/.dot_file"
  end

  describe "Remembering a file" do
    it "moves the dot file to the repo directory" do
      @file.should be_valid
      @file.save.should == true
      @file.should be_saved
    end

    it "restores the original file path as a symlink" do
      @file.save.should == true
      @file.should be_saved
    end
  end

  describe "Forgetting a file" do
    before do
      %x(touch ~/.dots/config/dot_file && ln -s ~/.dots/config/dot_file ~/.dot_file)
      @file = Dots::DotFile.find "~/.dot_file"
    end

    it "removes the dot file from the repo directory" do
      @file.destroy.should == true
      @file.should_not be_saved
    end

    it "moves the tracked file back to its original location" do
      @file.destroy.should == true
      @file.should_not be_saved
      File.exists?(@file.tracked_path).should_not == true
    end
  end

  after do
    `rm ~/.dot_file` if File.exists? File.expand_path("~/.dot_file")
    `rm ~/.dots/config/dot_file` if File.exists? File.expand_path("~/.dots/config/dot_file")
  end
end

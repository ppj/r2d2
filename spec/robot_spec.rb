require 'spec_helper'

describe Robot do
  describe ".new" do
    before { @robot = Robot.new }

    it "creates a new instance of class Robot" do
      expect(@robot).to be_an_instance_of(Robot)
    end

    it "initializes initial X, Y coordinates of the robot to nil, nil" do
      expect(@robot.x).to be_nil
      expect(@robot.y).to be_nil
    end

    it "initializes intial direction of robot to 'NORTH'"
  end
end

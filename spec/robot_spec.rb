require 'spec_helper'

describe Robot do
  describe ".new" do
    subject { Robot.new }

    it { is_expected.to be_an_instance_of(Robot) }

    it "initializes initial X, Y coordinates of the robot to nil, nil" do
      expect(subject.x).to be_nil
      expect(subject.y).to be_nil
    end

    it "initializes facing-direction of robot to nil" do
      expect(subject.facing).to be_nil
    end
  end

  describe "#place" do
    subject { Robot.new }

    it "sets the coordinates and facing-direction as per the supplied parameters" do
      subject.place(3, 2, "SOUTH")
      expect(subject.x).to eq(3)
      expect(subject.y).to eq(2)
      expect(subject.facing).to eq("SOUTH")
    end

    it "sets the default direction to 'NORTH'" do
      subject.place(1, 5)
      expect(subject.facing).to eq("NORTH")
    end
  end

  describe "#report" do
    subject { Robot.new }

    it "returns the current coordinates and facing-direction of the robot" do
      subject.place(3, 2)
      expect(subject.report).to eq([3, 2, "NORTH"])
    end
  end

  describe "#move" do
    subject { Robot.new }

    it "increments Y-coordinate of robot by one" do
      subject.place(5, 2)
      subject.move
      expect(subject.report).to eq([5, 3, "NORTH"])
    end
  end
end

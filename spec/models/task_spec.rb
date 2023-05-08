require 'rails_helper'

RSpec.describe Task, typ: :model do
  describe "instance methods" do
    describe "#laundry?" do
      it "returns true when title is laundry" do
        task = Task.create!(title: "laundry", description: "clean clothes")

        expect(task.laundry?).to be(true)
      end

      it "returns true when the descriptin is laundry" do
        task = Task.create!(title: "Clean my clothes", description: "laundry")

        expect(task.laundry?).to be(true)
      end

      it "returns false when neither description nor title is laundry" do
        task = Task.create!(title: "Wash clothes", description: "complete the washing of dirty clothes")

        expect(task.laundry?).to be(false)
      end

      it "returns true when the title contains the word laundry" do
        task = Task.create!(title: "Do the laundry", description: "wash the clothes")

        expect(task.laundry?).to be(true)
      end

      it "is case insensitive when checking if the title contains the word laundry" do
        task = Task.create!(title: "Do Laundry", description: "clothes washing")

        expect(task.laundry?).to be(true)
      end

      it "returns true when the description contains the word laundry" do
        task = Task.create!(title: "clothes washing", description: "Do laundry")
        
        expect(task.laundry?).to be(true)
      end
      
      it "is case insensitive when checking if the description contains the word laundry" do
        task = Task.create!(title: "clothes washing", description: "Do Laundry")
        
        expect(task.laundry?).to be(true)
      end
    end
  end
end
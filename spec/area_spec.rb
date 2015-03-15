
RSpec.describe "Triangle" do

  before do
    triangle = Triangle.new(5,4)
    t_area = triangle.area
  end


    it "has area 10" do
      expect(t_area).to eq 10

  end

end

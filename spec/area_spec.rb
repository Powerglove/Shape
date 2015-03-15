RSpec.describe "Triangle" do

    it "{Triangle < Shape}" do
      triangle = Triangle.new(5,4)
      t_area = triangle.area
      expect(t_area).to eq 10
    end

end

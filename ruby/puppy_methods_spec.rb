require_relative 'puppy_methods'

describe Athlete do 
 let(:athlete) {Athlete.new}	


it "injures the athletes health by 20 points" do 
	athlete.injure
	expect(athlete.health).to eq 80
end

end
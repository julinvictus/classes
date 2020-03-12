require_relative '../animals'

describe Dog do
    menina = Dog.new ("Menina")
    it "should say woof" do
        expect(menina.talk).to eq ("Menina says woof")
    end
    it "should be a pack member" do
        expect(menina.behavior).to eq ("Menina is a pack member")
    end
    it "should have 4 paws" do
        expect(menina.number_of_paws).to eq ("Menina has 4 paws")
    end
    it "is not valid without a name" do
        no_name = Dog.new(nil)
        expect(no_name).to_not be_valid
    end
end

describe Human do
    it "should adopt an animal" do
        maria = Human.new ("Maria")
        expect(maria.adopt('Rex')).to eq ("Maria adopted Rex")
    end
    it "is not valid without a name" do
        no_name = Human.new(nil)
        expect(no_name).to_not be_valid
    end
    it "updates pet.hungry after feeding" do
        genesis = Human.new("Genesis")
        genesis.adopt("Malani")
        expect(genesis.pet.is_hungry?).to eq (true)
        genesis.feeding
        expect(genesis.pet.is_hungry?).to eq (false)
    end
    # create a human with a name
    # create a human with a bad name
    # good input and bad input
end


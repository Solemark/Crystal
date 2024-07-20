require "./spec_helper"

describe GachaRoll do
  describe "test GachaRoll" do
    describe "test roll function" do
      it "test FGO" do
        res = GachaRoll.roll GachaRoll::Game::FGO
        res.should contain "FGO"
      end
      it "test AK" do
        res = GachaRoll.roll GachaRoll::Game::AK
        res.should contain "AK"
      end
      it "test GI" do
        res = GachaRoll.roll GachaRoll::Game::GI
        res.should contain "GI"
      end
    end
  end
end

require './blackjack.rb'

describe "Blackjack" do
  let(:game) {Blackjack.new}
  describe "#run" do
    it "should welcome the user to the casino" do
      game.stub(:gets) {"y\n"}
      game.should_receive(:puts).with("\nWelcome to my casino! \nWould you like to play a game of Blackjack?").and_call_original
      game.should_receive(:puts).with("\nHave a seat!\n\nDrawing up a chair...\n\n").and_call_original
      game.run
    end
  end
end
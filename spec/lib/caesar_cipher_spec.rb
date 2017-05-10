require "spec_helper"
require "caesar_cipher"

describe "Caesar Cipher Function" do
    it "Wraps over on the alphabet" do
        expect(caesar_cipher("xxxXXX", 3)).to eq("aaaAAA")
        expect(caesar_cipher("tttyyyyTTTyyydddDDD", 21)).to eq("ooottttOOOtttyyyYYY")
    end

    it "Encrypts a single work" do
        expect(caesar_cipher("Programming", 5)).to eq("Uwtlwfrrnsl")
    end

    it "Encrypts an entire phrase" do
        expect(caesar_cipher("I am having fun programming", 11)).to eq("T lx slgtyr qfy aczrclxxtyr")
    end

    it "Only shifts Alphabetical characters" do
        expect(caesar_cipher("How much, Wood, could 10, woodchucks, chuck?! That's a stupid question.", 6)).to eq("Nuc sain, Cuuj, iuarj 10, cuujinaiqy, inaiq?! Zngz'y g yzavoj wakyzout.")
    end
end

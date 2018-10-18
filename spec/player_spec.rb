require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }
  subject(:mittens) { Player.new('Mittens')}
  
  describe '#name' do
    it 'returms the name' do
      expect(dave.name).to eq 'Dave'
    end
  end
  
  describe '#hitpoints' do
    it 'returns the hit points' do
      expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
  
  describe '#attack' do
    it 'damaged the player' do
      expect(mittens).to receive(:receive_damage)
      dave.attack(mittens)
    end
  end
  
  describe '#receive_damage' do
  it 'reduce the player hit points' do
    expect{ dave.receive_damage}.to change { dave.hit_points }.by(-10)
  end
  end
end
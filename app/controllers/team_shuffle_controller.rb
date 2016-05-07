class TeamShuffleController < ApplicationController
  def index
    @team1 = Array.new
    @team2 = Array.new

    4.times do
      @team1 << Weapon.find( Weapon.pluck(:id).sample )
      @team2 << Weapon.find( Weapon.pluck(:id).sample )
    end

    result = ""

    result << "◆アルファチーム\n"
    @team1.each do |weap|
      result << "\t" + weap.name_ja + "\n"
    end
    result << "◆ブラボーチーム\n"
    @team2.each do |weap|
      result << "\t" + weap.name_ja + "\n"
    end

    @result = result
  end
end

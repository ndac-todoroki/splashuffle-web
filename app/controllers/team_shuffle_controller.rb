class TeamShuffleController < ApplicationController
  def index
    @team1 = Array.new
    @team2 = Array.new
    ids = Weapon.pluck(:id)

    4.times do
      @team1 << Weapon.find( ids.sample )
      @team2 << Weapon.find( ids.sample )
    end

    result = ""

    result << "◆アルファチーム\n"
    @team1.each do |weapon|
      result << "\t" + weapon.name_ja + "\n"
    end
    result << "◆ブラボーチーム\n"
    @team2.each do |weapon|
      result << "\t" + weapon.name_ja + "\n"
    end

    @result = result
  end
end

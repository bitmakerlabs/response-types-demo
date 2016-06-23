require 'csv'

class Monster < ActiveRecord::Base
  def self.to_csv
    CSV.generate(headers: true) do |csv|
      # Add the header row to the resulting CSV
      csv << %w(ID Name Home Creepiness)

      Monster.all.each do |monster|
        csv << [monster.id, monster.name, monster.home, monster.creepiness]
      end
    end
  end
end

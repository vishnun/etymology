class Rootword < ActiveRecord::Base
    has_many :non_rootwords

    serialize :usages

    validates :word, presence: true
    validates :word, uniqueness: true
end

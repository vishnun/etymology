class NonRootword < ActiveRecord::Base
    belongs_to :rootword

    serialize :meaning
    serialize :usages

    validates :word, presence: true
    validates :word, uniqueness: true
end

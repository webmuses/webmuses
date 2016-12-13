class EventType
  class << self
    def all
      [
       'Amusing Workshops',
       'Rails Girls',
       'WebSchool',
       'Muse Talk',
       'The Awwwesomes'
      ]
    end

    def all_with_index
      all.collect.with_index{|x, index| [x, index]}
    end

    def find(id)
      all[id]
    end
  end
end

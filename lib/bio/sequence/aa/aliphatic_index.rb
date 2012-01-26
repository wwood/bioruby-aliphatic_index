require 'bio'

module Bio
  class Sequence
    class AA
      def aliphatic_index
        comp = self.composition
        a = 2.9
        b = 3.9
        (comp['A']+a*comp['V'].to_f+b*(comp['I']+comp['L'])).to_f/length.to_f*100
      end
    end
  end
end
module HitchhikerGuide
  class Error < StandardError
    UnknownSymbol = Class.new(self)
  end
end

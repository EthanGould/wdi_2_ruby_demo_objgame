
module GAGame
  module Talker
    def talk(msg)
    %x{ say "#{msg}"}
    end
  end
end

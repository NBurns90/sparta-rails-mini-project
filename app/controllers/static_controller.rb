class StaticController < ApplicationController

def landing
  @check_ins = CheckIn.all
end

end

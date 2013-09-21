class WelcomeController < ApplicationController
  def index
   # @text = "jaja, heli ist bald da"
    require 'programr'

#  puts 'Please pass a list of AIMLs and/or directories as parameters'
 # puts 'Usage: ruby programr_test.rb {aimlfile|dir}[{aimlfile|dir}]...'
aimls = ['./']
#aimls = ['/home/helmut/projekte/rbs/']
robot = ProgramR::Facade.new
robot.learn(aimls)
s = 'hello'
reaction = robot.get_reaction(s) 
  @text  = reaction
  end
  def home
    @you2heli = current_user.you2helis.build if signed_in?
  end
end

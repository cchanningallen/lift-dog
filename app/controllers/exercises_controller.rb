class ExercisesController < ApplicationController
  expose(:exercise)
  expose(:exercises) { current_user.exercises }
end

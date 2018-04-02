class QuestionsController < ApplicationController
  def ask
    @query = "something"

  end

  def answer
    @answer = coach_answer(params[:query])
  end




  def coach_answer(query)
    if query.include?"?"
      return "Silly question, get dressed and go to work!."
    elsif query.include? "I am going to work"
      return "Great!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end





end


















































# If the message is I am going to work, the coach will answer Great! - coach answer
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!. -answer_enhanced
# Otherwise he will answer I don't care, get dressed and go to work! - answer



# class CoachingController < ApplicationController
#   def answer
#     @query = params[:query]
#     @answer = coach_answer_enhanced(@query)
#   end

#   def ask
#   end

#   private

#   def coach_answer(query)
#     if query.include? "?"
#       return "Silly question, get dressed and go to work!"
#     elsif query.include? "I am going to work right now!"
#       return ""
#     else "I don't care, get dressed and go to work!"
#     end
#   end

#   def coach_answer_enhanced(query)
#     if query == "I AM GOING TO WORK RIGHT NOW!"
#       return ""
#     elsif query == query.upcase
#       return "I can feel your motivation! #{coach_answer(query)}"
#     else
#       return coach_answer(query)
#     end
#   end
# end

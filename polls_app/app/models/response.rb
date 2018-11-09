class Response < ApplicationRecord
  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User 
    
  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice
  
  has_one :question, 
    through: :answer_choice,
    source: :question
    
  def sibling_responses
    question = self.question
    responses = question.responses.where('responses.id != ?', self.id)
    
    responses
  end 
  
  def respondent_already_answered?
    count_of_same_user = sibling_responses.where('user_id = ?', self.user_id)
    
    count_of_same_user.count != 0
  end
  
end

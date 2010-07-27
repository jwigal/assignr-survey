survey "assignr.com customer survey" do
  section "Survey Questions" do
    q_1 "What is your role with assignr.com?", :pick => :any
    a_1 "Assignor"
    a_2 "Referee"
    a_3 "Administrator"
    a_4 "Other"
    
    q_2 "How satisfied are you with the support you have received with assignr.com?", :pick => :one
    ["Very Satisfied", "Satisfied", "Neutral", "Dissatisfied", "Very Dissatisfied", "N/A"].each{|level| a level}

    q_3 "How satisfied are you with the ease of use of assignr.com?", :pick => :one
    ["Very Satisfied", "Satisfied", "Neutral", "Dissatisfied", "Very Dissatisfied"].each{|level| a level}

    q_4 "How satisfied are you with our assignr.com overall?", :pick => :one
    ["Very Satisfied", "Satisfied", "Neutral", "Dissatisfied", "Very Dissatisfied"].each{|level| a level}

    q_5 "How likely would you recommend our service to others?", :pick => :one
    ["Very Likely", "Likely", "Neutral", "Unlikely", "Very Unlikely"].each{|level| a level}
    
    q_6 "Were you involved in the decision to use the assignr.com service?", :pick => :one
    a_1 "Yes"
    a_2 "No"

      q_7 "How satisfied are you with the decision to use assignr.com?", :pick => :one
      ["Very Satisfied", "Satisfied", "Neutral", "Dissatisfied", "Very Dissatisfied"].each{|level| a level}
      dependency :rule => "A"
      condition_A :q_6, "==", :a_1

      q_8 "How satisfied are you with the price of assignr.com?", :pick => :one
      ["Very Satisfied", "Satisfied", "Neutral", "Dissatisfied", "Very Dissatisfied"].each{|level| a level}
      dependency :rule => "A"
      condition_A :q_6, "==", :a_1

      q_9 "How likely are you to use assignr.com beyond the current season?", :pick => :one
      ["Very Likely", "Likely", "Neutral", "Unlikely", "Very Unlikely"].each{|level| a level}
      dependency :rule => "A"
      condition_A :q_6, "==", :a_1
    
    q_10 "What do you like about assignr.com?"
    a "Comments:", :text

    q_11 "What do you not like about assignr.com?"
    a "Comments:", :text

    q_12  "Any other comments?"
    a "Comments:", :text

    q_13  "Can we use any of your words on our website as promotional material?", :pick => :one
    a_1 "Yes"
    a_2 "No"

    q_14  "If yes, we like to attribute testimonials with a first name and a location (like 'Bob, California')."  
    a "name", :string
    dependency :rule => "A"
    condition_A :q_13, "==", :a_1
   
    q_15  "Would you like us to follow up with you regarding this survey?  If so, please provide your e-mail address."
    a "E-mail Address", :string
    
    
  end
end
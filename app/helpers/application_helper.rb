module ApplicationHelper

def nldate(date)
    "#{time_ago_in_words(date)} ago"
end

end

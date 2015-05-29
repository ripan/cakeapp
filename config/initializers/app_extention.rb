class String

  def getFormattedDate
    mmddyyyy = self.split('/')
    month = mmddyyyy[0]
    day = mmddyyyy[1]
    year = mmddyyyy[2]
    "#{year}-#{month}-#{day}"
  end

end

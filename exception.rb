class InvalidInputException < StandardError

end

class String

  def is_numberic?
    Integer(self) rescue nil
  end
end

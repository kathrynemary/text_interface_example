module TextInterface
  module MenuCommand
    MENU_TEXT = "Would you like to enter a string(1), integer(2), or float(3)? "

    def self.perform
      display_menu_text
      TextInterface.get_user_input
    end

    def self.display_menu_text
      print MENU_TEXT
    end
  end
end

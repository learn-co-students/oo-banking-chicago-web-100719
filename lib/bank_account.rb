class BankAccount

    attr_reader :name
    attr_accessor :balance, :status

    def initialize(name)
        @status = "open"
        @balance = 1000
        @name = name
    end

    def deposit(money)
        @balance += money
    end

    def display_balance
        p "Your balance is $#{@balance}."
    end

    def valid?
        if @status == "open" && @balance > 0
            return true
        else 
            return false
        end
    end
    
    def close_account 
        @status = "closed"
    end

end
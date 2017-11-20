class Cat
    attr_accessor :nicknames

    def initialize(name, nicknames)
        @name = name
        @nicknames = nicknames
    end

    def call
        puts "Come here #{@name}"
        if not @nicknames.nil?
            # if @nicknames is a list, iterate
            if @nicknames.respond_to?("each")
                @nicknames.each do |nickname|
                    puts "Come here #{nickname}"
                end
            else
                puts "Come here #{@nicknames}"
            end
        end
    end

    def say_nicknames
        if @nicknames.nil?
            puts "No nicknames for this cat"
        elsif @nicknames.respond_to?("join")
            puts "#{@name}'s nicknames include: #{@nicknames.join(", ")}"
        end
    end
end

neymar = Cat.new("Neymar", ["Baby Tiger", "Neymister", "Original Tabby"])

neymar.call
neymar.say_nicknames
            
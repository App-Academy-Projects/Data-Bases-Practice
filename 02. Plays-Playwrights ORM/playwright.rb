require_relative 'plays.rb'

class Playwright
    def initialize(options)
        @id = options['id']
        @name = options['name']
        @birth_year = options['birth_year']
    end
end
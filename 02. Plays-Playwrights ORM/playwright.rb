require_relative 'plays.rb'

class Playwright
    def self.all
        data = PlayDBConnection.instance.execute("SELECT * FROM playwrights")
        data.map { |datum| Playwright.new(datum) }
    end

    def initialize(options)
        @id = options['id']
        @name = options['name']
        @birth_year = options['birth_year']
    end

    def self.find_by_name(name)
        PlayDBConnection.instance.execute(<<-SQL)
            SELECT
                *
            FROM
                playwrights
            WHERE
                name LIKE '%#{name}%'
        SQL
    end
end
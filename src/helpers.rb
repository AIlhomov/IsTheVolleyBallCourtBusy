# helpers.rb
module Helpers
    def title
        'Volleyball Decision Maker'
    end
    def get_result
        ['Yes', 'No'].sample
    end
    def show_result?
        @result
    end
    def format_time(time)
        time.strftime('%I:%M %p')
    end
    def format_date(date)
        date.strftime('%B %d, %Y')
    end
    def format_datetime(datetime)
        format_date(datetime) + ' at ' + format_time(datetime)
    end
end

helpers Helpers
function TasksIndex(){
    console.log('hola mundo')
    setInterval(function(){
        $(".playing-task").each(function(idx,el){
            $seconds = $(el).find('.seconds')
            $minutes = $(el).find('.minutes')
            $hours = $(el).find('.hours')
            $days = $(el).find('.days')

            seconds = parseInt($seconds.html())
            minutes = parseInt($minutes.html())
            hours = parseInt($hours.html())
            days = parseInt($days.html())

            seconds += 1
            if (seconds >= 60)
            {
                seconds = 0
                minutes += 1
            }
            if (minutes >= 60)
            {
                minutes = 0
                hours +=   1
            }
            if (hours >= 24)
            {
                hours = 0
                days += 1
            }
            
            $days.html(days)
            $hours.html(hours)
            $minutes.html(minutes)
            $seconds.html(seconds)           
            
        })
    },1000)
}
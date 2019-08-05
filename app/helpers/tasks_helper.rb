module TasksHelper
    def time_in_distance(t)
        mm, ss = t.divmod(60)            
        hh, mm = mm.divmod(60)           
        dd, hh = hh.divmod(24) 
        render "duration", mm: mm, ss:ss, dd:dd, hh:hh
    end
end

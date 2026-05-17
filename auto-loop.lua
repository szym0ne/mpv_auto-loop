local LOOP_THRESHOLD = 15  -- loop files shorter than this (seconds)

function auto_loop()
    local file_duration = mp.get_property_number("duration", 0)
    if file_duration > 0 and file_duration < LOOP_THRESHOLD then
        mp.set_property("loop-file", "yes")
    else
        mp.set_property("loop-file", "no")
    end
end

mp.register_event("file-loaded", auto_loop)

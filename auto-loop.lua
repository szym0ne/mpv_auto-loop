function auto_loop()
	local file_duration = mp.get_property_number("duration", 0)
	-- below value after string: "file_duration < " is set to 15 - it means that every file shorter than 15 sec will be infinitely looped
	-- change this to desired limit value
	if file_duration < 15 then
		mp.set_property("loop-file", "yes")
	else
		mp.set_property("loop-file", "no")
	end
end

mp.register_event("file-loaded", auto_loop)
-- scrolling_text.lua

-- Configuration
local scroll_speed = 30  -- Adjust the speed of scrolling

-- Initialize the starting position
local start_pos = conky_window.width

-- Function to scroll the text horizontally
function playerScroll(text)
    -- Calculate the length of the text
    local text_length = conky_window.text_width(text)

    -- Scroll the text horizontally
    start_pos = start_pos - scroll_speed
    if start_pos < -text_length then
        start_pos = conky_window.width
    end

    -- Display the text at the current position
    conky_draw_text(start_pos, conky_window.height / 2, text)
end


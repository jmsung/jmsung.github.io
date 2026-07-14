-- Right-align the date in level-3 entry headings.
-- Convention: "### Company --- Role | MM/YYYY -- Present"
-- The text after the last " | " is pushed to the right margin with \hfill.
function Header(el)
  if el.level ~= 3 then return nil end
  local n = #el.content
  -- find the last Str that is "|"
  local pipe = nil
  for i = n, 1, -1 do
    local item = el.content[i]
    if item.t == "Str" and item.text == "|" then pipe = i; break end
  end
  if not pipe then return nil end
  local left = {}
  for i = 1, pipe - 1 do left[#left+1] = el.content[i] end
  -- drop trailing space before the pipe
  if #left > 0 and left[#left].t == "Space" then left[#left] = nil end
  local right = {}
  for i = pipe + 1, n do right[#right+1] = el.content[i] end
  -- drop leading space after the pipe
  if #right > 0 and right[1].t == "Space" then table.remove(right, 1) end

  local new = left
  new[#new+1] = pandoc.RawInline("latex", "\\hfill\\normalfont\\itshape ")
  for _, r in ipairs(right) do new[#new+1] = r end
  el.content = new
  return el
end

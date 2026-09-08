local DARK_BG = "#000F46"

local function has_class(classes, name)
  for _, c in ipairs(classes) do
    if c == name then return true end
  end
  return false
end

function Header(el)
  if el.level == 1 then
    if has_class(el.classes, "no-dark") then
      -- opt-out: strip the marker class, leave everything else alone
      for i, c in ipairs(el.classes) do
        if c == "no-dark" then el.classes:remove(i) break end
      end
    elseif el.attributes["background-color"] == nil then
      el.attributes["background-color"] = DARK_BG
      if not has_class(el.classes, "center") then
        el.classes:insert("center")
      end
    end

    -- Pandoc's reveal.js writer routes headers above slide-level through a
    -- stripped-down "title-slide for a new section" path that drops
    -- key-value attributes like background-color (only id/classes survive).
    -- Demoting to level 2 keeps it a real, independent slide that goes
    -- through the normal slide path, which does honour background-color.
    el.level = 2
  end
  return el
end

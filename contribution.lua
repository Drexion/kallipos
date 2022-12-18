function Image(img)
    if img.classes:find('contribution',1) then
      local f = io.open("contribution/" .. img.src, 'r')
      local doc = pandoc.read(f:read('*a'))
      f:close()
      local title = pandoc.utils.stringify(doc.meta.title) or "Title Not Set"
      local contribution = pandoc.utils.stringify(doc.meta.contribution) or "Contribution Not Set"
      local student = pandoc.utils.stringify(doc.meta.student) or "Student Name Not Set"
      local studentid = pandoc.utils.stringify(doc.meta.studentid) or "Student ID Not Set"
      local content = "**" .. title .. "  \n**" .. "*" .. contribution .. "*  \n" .. "**Ονοματεπωνυμο Φοιτητη: **" .. student .."  \n**Aριθμος Mητρωου: **" .. studentid
      return pandoc.RawInline('markdown',content)
    end
end


function Image(img)
    if img.classes:find('contribution',1) then
      local f = io.open("contribution/" .. img.src, 'r')
      local doc = pandoc.read(f:read('*a'))
      f:close()
      local title = pandoc.utils.stringify(doc.meta.title)
      local contribution = pandoc.utils.stringify(doc.meta.contribution) 
      local student = pandoc.utils.stringify(doc.meta.student)
      local studentid = pandoc.utils.stringify(doc.meta.studentid)
      local content = "<b>" .. title .. "</b> \n" .. "<i>" .. contribution .. "</i> \n" .. "Ονοματεπωνυμο Φοιτητη:" .. student .."\nAριθμος Mητρωου:" .. studentid
      return pandoc.RawInline('markdown',content)
    end
end

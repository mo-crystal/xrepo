package("mocutils")
  set_urls("https://github.com/mo-crystal/mocutils.git")
  on_install("mingw", function (package)
    os.vrun("xmake f -p mingw")
  end)
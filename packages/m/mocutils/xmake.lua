package("mocutils")
  set_urls("https://github.com/mo-crystal/mocutils.git")
  on_install("mingw", function (package)
    os.run("xmake f -p mingw")
    os.run("xmake")
  end)
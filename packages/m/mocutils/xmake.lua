package("mocutils")
  set_urls("https://github.com/mo-crystal/mocutils.git")

  on_install("mingw", function (package)
    -- import("package.tools.xmake").install(package)
    os.run("xmake f -p mingw")
    os.run("xmake")
    os.run("xmake install")
  end)
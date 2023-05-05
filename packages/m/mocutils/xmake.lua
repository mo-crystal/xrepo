package("mocutils")
  set_urls("https://github.com/mo-crystal/mocutils.git")

  on_install("mingw", function (package)
    os.run("xmake f -p mingw")
    os.run("xmake")
    os.cp("src/*.h", package:installdir("include/mocutils"))
    os.cp("build/mingw/x86_64/release/*.a", package:installdir("lib"))
  end)
package("mocutils")
  set_urls("https://github.com/mo-crystal/mocutils.git")

  on_install(function (package)
    import("package.tools.xmake").install(package)
  end)
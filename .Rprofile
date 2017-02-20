options(repos="https://cran.ism.ac.jp/");

if(capabilities("aqua")) {
  options(device="quartz");
}

setHook(packageEvent("grDevices", "onLoad"), function(...) {
  if (capabilities("aqua")) {
    grDevices::quartzFonts(
      serif = grDevices::quartzFont(c("Hiragino Mincho Pro W3",
                                      "Hiragino Mincho Pro W6",
                                      "Hiragino Mincho Pro W3",
                                      "Hiragino Mincho Pro W6")),
      sans = grDevices::quartzFont(c("Hiragino Kaku Gothic Pro W3",
                                     "Hiragino Kaku Gothic Pro W6",
                                     "Hiragino Kaku Gothic Pro W3",
                                     "Hiragino Kaku Gothic Pro W6"))
    );
  }

  grDevices::ps.options (family="Japan1GothicBBB");
  grDevices::pdf.options(family="Japan1GothicBBB");
}

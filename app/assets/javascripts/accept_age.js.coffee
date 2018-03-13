$(document).ready ->
  object = $(".dim, .box")

  $("#show-box").click -> object.show()

  $(".close").click -> object.hide()

$(document).ready ->
  object = $(".dim, .box")

  $(".dim").css "background-color", black
  $(".box").css "border-color", red
  $(".box").css "background-color", white
  $(".close").css "border-color", red
  $("hr").css "border-color", clouds

  object.hide()

  $("#show-box").click -> object.show()

  $(".close").click -> object.hide()

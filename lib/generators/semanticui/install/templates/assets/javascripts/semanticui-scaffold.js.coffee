$(document).on("click touchend", ".main.menu .side.toggle", (e) ->
  e.preventDefault()
  $(".sidebar").sidebar("toggle")
);

$(document).on("click touchend", ".message .close", (e) ->
  e.preventDefault()
  $(this).closest(".message").remove();
)

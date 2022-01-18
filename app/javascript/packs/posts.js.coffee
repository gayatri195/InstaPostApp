
$ ->
  if $('.pagination').length && $('#infinite-scrolling').length
    $(window).scroll ->
      url = $('.pagination .next_page').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
        $('.pagination').text("Loading more posts...")
        $.getScript(url)
      return
    return
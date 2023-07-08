window.onscroll = function() {scrollFunction(), scrollFunction1(), scrollFunction2()};

function scrollFunction() {
  if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
    document.getElementById("nav-dk").style.backgroundColor = "#97AFB9";
  } else {
    document.getElementById("nav-dk").style.backgroundColor = "transparent";

  }
}

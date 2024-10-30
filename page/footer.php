<a href="javascript:" id="return-to-top"><i class="fa fa-chevron-up"></i></a>

    <script>
    // ===== Scroll to Top ==== 
$(window).scroll(function() {
    if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
        $('#return-to-top').fadeIn(200);    // Fade in the arrow
    } else {
        $('#return-to-top').fadeOut(200);   // Else fade out the arrow
    }
});
$('#return-to-top').click(function() {      // When arrow is clicked
    $('body,html').animate({
        scrollTop : 0                       // Scroll to top of body
    }, 500);
});
    </script>
</body>
<footer><div class="well text-center"> <small>&copy; Copyright 2020 - <?php echo date("Y"); ?>, Douglas College IT Services SHS.</small> </div></footer>
</html>
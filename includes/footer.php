<html>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

<!-- Inverts website color, creating  'dark mode' -->
<script>
    document.onkeypress = function(e) {
        e = e || window.event;

        if (e.keyCode === 13) {
            document.documentElement.classList.toggle('dark-mode');
            document.querySelectorAll('.inverted').forEach((result) => {
                result.classList.toggle('invert');
            })
        }
    }
</script>
<footer class="page-footer font-medium teal pt-6">
    <div class="container-fluid text-center text-md-left">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h3 class="logo-text">ConcertEdia</h3>
                <p class="paragraph-text">
                    ConcertEdia è il sito che ti permette di fare un tuffo nella bella musica del passato.
                    Cerca il tuo concerto preferito, guarda il video e immergiti nella descrizione.
                </p>
                <div class="social">
                    <a href="#"> <i class="fa fa-facebook"></i></a>&nbsp;
                    <a href="#"> <i class="fa fa-twitter"></i></a>&nbsp;
                    <a href="#"> <i class="fa fa-instagram"></i></a>&nbsp;
                    <a href="https://github.com/tiaringhio/Concert"> <i class="fa fa-github"></i></a>
                </div>
            </div>
            <div class="col-md-6">
                <h3 class="logo-text">Chi siamo</h3>
                <p class="paragraph-text">
                    Siamo due studenti dell'Università degli studi di Parma con la passione
                    per la programmazione e per la buona musica.
                </p>
                <div class="contact">
                    <span><i class="fa fa-envelope"></i> &nbsp; mattia.ricci1@studenti.unipr.it</span> &nbsp;
                    <a href="https://github.com/tiaringhio"> <i class="fa fa-github"></i></a> <br>
                    <span><i class="fa fa-envelope"></i> &nbsp; filippo.botti2@studenti.unipr.it</span> &nbsp;
                    <a href="https://github.com/FilippoBotti"> <i class="fa fa-github"></i></a>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    <div class="footer-copyright text-center">
        &copy; ConcertEdia | Designed by Mattia Ricci & Filippo Botti
    </div>
</footer>

</html>
<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/stylesheet.css">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    
    <title>Pricing example for Bootstrap</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/pricing/">


    <!-- Custom styles for this template -->
    <link href="pricing.css" rel="stylesheet">
</head>

<body>

<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
    <h5 class="my-0 mr-md-auto font-weight-normal">Kołtuneria Artystyczna</h5>
<%--    <nav class="my-2 my-md-0 mr-md-3">--%>
<%--        <a class="p-2 text-dark" href="#">Features</a>--%>
<%--        <a class="p-2 text-dark" href="#">Enterprise</a>--%>
<%--        <a class="p-2 text-dark" href="#">Support</a>--%>
<%--        <a class="p-2 text-dark" href="#">Pricing</a>--%>
<%--    </nav>--%>
    <a class="btn btn-outline-primary" href="#">REZERWUJ WIZYTĘ</a>
</div>

<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
    <h1 class="display-4">Kołtuneria Artystyczna</h1>
    <p class="lead">Studio alternatywnych fryzur</p>
</div>

<div class="container">
    <div class="card-deck mb-3 text-center">
        <div class="card mb-4 box-shadow">
            <div class="card-header">
                <h4 class="my-0 font-weight-normal"> - </h4>
            </div>
            <div class="card-body">
                <h1 class="card-title pricing-card-title">Warkocze</h1>
                <ul class="list-unstyled mt-3 mb-4">
                    <li>czas zakładania: 6h</li>
                    <li>czas noszenia: 2 miesiące</li>
                    <li>różne kolory</li>
                    <li>różne długości</li>
                </ul>
                <button type="button" class="btn btn-lg btn-block btn-outline-primary">WIĘCEJ</button>
            </div>
        </div>
        <div class="card mb-4 box-shadow">
            <div class="card-header">
                <h4 class="my-0 font-weight-normal"> - </h4>
            </div>
            <div class="card-body">
                <h1 class="card-title pricing-card-title">Dready / Dreadloki</h1>
                <ul class="list-unstyled mt-3 mb-4">
                    <li>czas wykonania: 1 - 8h</li>
                    <li>czas noszenia: 2 miesiące/ bez limitu</li>
                    <li>różne kolory</li>
                    <li>naturalne lub sztuczne</li>
                </ul>
                <button type="button" class="btn btn-lg btn-block btn-primary">WIĘCEJ</button>
            </div>
        </div>
        <div class="card mb-4 box-shadow">
            <div class="card-header">
                <h4 class="my-0 font-weight-normal"> - </h4>
            </div>
            <div class="card-body">
                <h1 class="card-title pricing-card-title">Afroloki</h1>
                <ul class="list-unstyled mt-3 mb-4">
                    <li>czas wykoniania: 4h</li>
                    <li>czas noszenia: 2 miesiące</li>
                    <li>różne kolory</li>
                    <li>różne typy skrętu</li>
                </ul>
                <button type="button" class="btn btn-lg btn-block btn-primary">WIĘCEJ</button>
            </div>
        </div>
    </div>

    <footer class="pt-4 my-md-5 pt-md-5 border-top">
        <div class="row">
            <div class="col-12 col-md">
                <img class="mb-2" src="https://getbootstrap.com/docs/4.0/assets/brand/bootstrap-solid.svg" alt="" width="24" height="24">
                <small class="d-block mb-3 text-muted">&copy; 2017-2018</small>
            </div>
            <div class="col-6 col-md">
                <h5>Features</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Cool stuff</a></li>
                    <li><a class="text-muted" href="#">Random feature</a></li>
                    <li><a class="text-muted" href="#">Team feature</a></li>
                    <li><a class="text-muted" href="#">Stuff for developers</a></li>
                    <li><a class="text-muted" href="#">Another one</a></li>
                    <li><a class="text-muted" href="#">Last time</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>Resources</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Resource</a></li>
                    <li><a class="text-muted" href="#">Resource name</a></li>
                    <li><a class="text-muted" href="#">Another resource</a></li>
                    <li><a class="text-muted" href="#">Final resource</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>About</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Team</a></li>
                    <li><a class="text-muted" href="#">Locations</a></li>
                    <li><a class="text-muted" href="#">Privacy</a></li>
                    <li><a class="text-muted" href="#">Terms</a></li>
                </ul>
            </div>
        </div>
    </footer>
</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="../../assets/js/vendor/popper.min.js"></script>
<script src="../../webapp/js/bootstrap.js"></script>
<script src="../../assets/js/vendor/holder.min.js"></script>
<script>
    Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
    });
</script>
</body>
</html>
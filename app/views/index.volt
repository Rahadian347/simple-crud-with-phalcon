<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <title>Simple CRUD</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <style>
    
    
        .form-signin {
            width: 100%;
            max-width: 330px;
            padding: 15px;
            margin: auto;
            position: relative;
            box-sizing: border-box;
            height: auto;
            padding: 25px;
            font-size: 16px;
        }
    
        .form-signin input[type="name"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }
    
        .form-signin input[type="email"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }
    
        .buttonLink {
            font: bold 11px Arial;
            text-decoration: none;
            background-color: #5cb85c;
            color: #ffffff;
            padding: 6px 10px 6px 13px;
            border-radius: 5px;
        }
    
        .buttonLink:hover {
            text-decoration: none;
            color: #ffffff;
        }
        .btnSave {
            margin-top: 5px;
        }

        #viewdata {
            margin-top: 7px;
            text-align: center;
        }
        
    </style>
    
</head>

<body>
    <div class="wrapper mx-auto">
        <h2 align="center">Simple CRUD</h2>
        {{ content() }}
    </div>
    {% if sentry_dsn is defined %}
    <script src="https://cdn.ravenjs.com/3.14.2/raven.min.js"></script>
    <script>
        var appDSN = "{{ sentry_dsn }}";
        //Raven.config(appDSN).install();
        {% if error is defined %}
        Raven.showReportDialog({
            eventId: "{{ errorid }}",
            dsn: appDSN
        });
        {% endif %}
    </script>
    {% endif %}
    <!-- Hotjar Tracking Code for https://aplikasi.kirim.email -->
    <script>
        (function (h, o, t, j, a, r) {
            h.hj = h.hj || function () { (h.hj.q = h.hj.q || []).push(arguments) };
            h._hjSettings = { hjid: 502156, hjsv: 5 };
            a = o.getElementsByTagName('head')[0];
            r = o.createElement('script'); r.async = 1;
            r.src = t + h._hjSettings.hjid + j + h._hjSettings.hjsv;
            a.appendChild(r);
        })(window, document, '//static.hotjar.com/c/hotjar-', '.js?sv=');
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
</body>

</html>
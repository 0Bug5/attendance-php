<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <title>loader</title> -->
    <style>
        .loader {
            top: 0;
            left: 0;
            right: 0;
            width: 100vw;
            height: 100vh;
            display: flex;
            position: fixed;
            align-items: center;
            justify-content: center;
            background-color: #f1f9fb;
            transition: opacity 0.75s, visibility 0.7s;
        }

        .loader_hidden {
            opacity: 0;
            visibility: hidden;

        }

        .loader::after {
            content: "";
            width: 75px;
            height: 75px;
            border-radius: 75px;
            border: 12px solid #ddd;
            border-top-color: dodgerblue;
            animation: loading 0.75s ease infinite;
        }

        @keyframes loading {
            from {transform: rotate(0turn);}
            to {transform: rotate(1turn);}
        }
    </style>
</head>
<body>
    <div class="loader">
    </div>
    <script>
        window.addEventListener('load', ()=>{
            const loader = document.querySelector('.loader');
            loader.classList.add('loader_hidden'); 
            loader.addEventListener('transformend', ()=>{
                document.body.removeChild('.loder');
             });
        });
    </script>
</body> 
</html>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>
    <header class="bg-danger">
        <h1 class="text-white p-3">AppDeportes</h1>
    </header>

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6">
                <form>
                    <div class="form-group">
                        <label for="selectSedes">Selecciona una sede:</label>
                        <select class="form-control" id="selectSedes">
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="selectDeportes">Selecciona un deporte:</label>
                        <select class="form-control" id="selectDeportes">
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="selectAtletas">Selecciona un atleta:</label>
                        <select class="form-control" id="selectAtletas">
                        </select>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="js/api.js"></script>
</body>
</html>
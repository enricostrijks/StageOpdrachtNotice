<?php 
require "includes/config.php";

$schiphol_query = "SELECT * FROM schiphol_data";
$schiphol_result = $conn->query($schiphol_query);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" charset="utf8" src="./js/jquery.dataTables.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <title>Stage Opdracht Notice</title>
</head>
<body>
    <div class="container">
        <table id="schiphol_data" class="display">
            <thead>
                <tr id="bg-header">
                    <th>ID</th>
                    <th>TIJD</th>
                    <th>BESTEMMING</th>
                    <th>VLUCHT</th>
                    <th>MAATSCHAPIJ</th>
                    <th>STATUS</th>
                </tr>
            </thead>
            <tbody>
            <?php while($row = $schiphol_result->fetch_assoc()) {?>
                <tr>
                    <td><?php echo $row['id']; ?></td>
                    <td><?php echo $row['time']; ?></td>
                    <td><?php echo $row['destination']; ?></td>
                    <td><?php echo $row['flight']; ?></td>
                    <td><?php echo $row['company']; ?></td>
                    <td><?php echo $row['status']; ?></td>
                </tr>
            <?php } ?>
            </tbody>
            <tfoot>
                <tr id="bg-footer">
                    <th>ID</th>
                    <th>TIJD</th>
                    <th>BESTEMMING</th>
                    <th>VLUCHT</th>
                    <th>MAATSCHAPIJ</th>
                    <th>STATUS</th>
                </tr>
            </tfoot>
        </table>
        <form>
            <label for="colorPicker" class="label">Kies de gewenste kleur</label><br>
            <input type="color" id="colorPicker"><br>

            <label for="colorPickerText" class="label">Kies de gewenste tekst kleur</label><br>
            <input type="color" id="colorPickerText">
        </form>
    </div>
    <script>
        $(document).ready( function () {
            $('#schiphol_data').DataTable({
                "columnDefs": [
                    {
                        "targets": [ 0 ],
                        "visible": false,
                        "searchable": false
                    }
                ],
                "order": [[ 0, "asc" ]],
            });
        } );
    </script>
    <script>
    var elems = ["bg-header", "bg-footer"];

    colorPicker = document.querySelector("#colorPicker");
    colorPicker.addEventListener("input", updateTableColor, false);

    function updateTableColor(event) {
        elems.forEach(function(item, index) {
            var element = document.getElementById(item);
            element.style.backgroundColor = event.target.value;
        });
    }

    colorPickerText = document.querySelector("#colorPickerText");
    colorPickerText.addEventListener("input", updateTableTextColor, false);

    function updateTableTextColor(event) {
        elems.forEach(function(item, index) {
            var elem = document.getElementById(item);
            elem.style.color = event.target.value;
        });
    }
    </script>
    
</body>
</html>
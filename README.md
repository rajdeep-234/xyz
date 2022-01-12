<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forms</title>
</head>
<body>
    <h2>This is form tutorial</h2>
    <form action="backend.php">
        <label for="enrollment no">Enrollment no</label>
        <label for="roll">Roll</label>
        <label for="email">Email</label>
        <label for="date">Date</label>
        <label for="certificates">certificates</label>
        <div>
            Enrollment no:<input type="text" id="enrollment no">
        </div>
        <br>
        <div>
            Roll:<input type="text" id="roll">
        </div>
        <br>
        <div>
            Email:<input type="text" id="email">
        </div>
        <br>
        <div>
            Date:<input type="date" name="" id="date">
        </div>
        <br>
        <div>
           certificates: <input type="number" id="certificates">
        </div>
        <br>
        <div>
             any physical disability:<input type="checkbox">
        </div>
        <br>
        <div>
            Gender:Male<input type="radio" name="MyGender"> Female <input type="radio" name="MyGender">Other:<input type="radio"name="MyGender">
        </div>
        <br>
        <div>
           write your opinion: <textarea name="mytext" id="" cols="35" rows="27"></textarea>
        </div>
        <br>
        <label for="car">Car</label>
        <select name="mycar" id="car">
            <option value="indica"selected>Indica</option>
            <option value="swift">Swift</option>
        </select>
        <div>
            <input type="submit" value="submit">
        </div>
        <br>
        <div>
           <input type="reset" value="reset">
        </div>
        <br>
    </form>
</body>
</html>

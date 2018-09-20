<html lang='ja'>
<head>
<title>Test form</title>
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
    crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
    crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
    crossorigin="anonymous"></script>
</head>
<body>
    <h1>Test form</h1>
    <form name="testform0" action='/check' method='post'>
% setdefault('item1', '')
% setdefault('item2', '')
% setdefault('item3', '')
% setdefault('formc',{})
        <p>
            <div class='form-group {{formc.get("item1")}}'>
                <label class='control-label' for="item1" >Item 1</label>
                <input class='form-control' type='text' length=6 name='item1' id='item1' value='{{item1}}'/>
            </div>
            <br/>
            <div class='form-group {{formc.get("item2")}}'>
                <label class='control-label' for='item2'>Item 2</label>
                <input class='form-control' type='text' length=200 name='item2' id='item2' value='{{item2}}' />
            </div>
            <br/>
            <div class='form-group {{formc.get("item3")}}'>
                <label class='control-label' for='item3'>Item 3</label>
                <input class='form-control' type='checkbox' name='item3' id='item3' value='checked' {{item3}} />
            </div>
        </p>
        <p><div class='bg-warning' class='bg-warning'>
        % for msg in message:
            {{msg}}<br/>
        % end
        </div></p>
        <input type='submit' value='Submit'/>
    </form>
</body>
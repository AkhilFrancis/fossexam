<?php
if(isset($_POST['submit']))
{
	$age=$_POST['age'];
	$upper=(220-$age)*0.85;
	$lower=(220-$age)*0.65;
}
?>


<html>
<head>
<title>
Simple Calculator heart rate
</title>
</head>
<body>
<h1>Heart Rate Calculator</h1>
<form method='post'>
Give Age of Person: <input type='text' name='age'>
<br>Upper Heart Rate = <input type='text' name='upper' value="<?php echo $upper; ?>">
<br>Lower Heart Rate = <input type='text' name='lower' value="<?php echo $lower; ?>">
<br><input type='submit' name='submit' value='Give Rate'>
</form>
</body>
</html>


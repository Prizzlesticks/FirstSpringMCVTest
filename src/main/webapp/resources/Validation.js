/**
 * 
 */
<script>
function validatePhone() {
	var fld = "phone";
    var error = "";
    var stripped = fld.value.replace(/[\(\)\.\-\ ]/g, '');
 
   if (fld.value == "") {
        error = "You didn't enter a phone number.\n";
        fld.style.background = 'Yellow';
        alert(error);
		return false;
 
    } else if (isNaN(parseInt(stripped))) {
        error = "The phone number contains illegal characters. Don't include dash (-)\n";
        fld.style.background = 'Yellow';
        alert(error);
		return false;
    } else if (!(stripped.length == 10)) {
        error = "The phone number is the wrong length. Make sure you included an area code. Don't include dash (-)\n";
        fld.style.background = 'Yellow';
        alert(error);
		return false;
    }
    return true;
}

</script>
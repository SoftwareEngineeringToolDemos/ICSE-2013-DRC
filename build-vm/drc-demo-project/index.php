<html>
<head>
        <title>My Website</title>
        <script>
                function process() {
                    	// This function is global and the HTML id container is refered here
                    	// without conditionals, whereas it appears in the code below as an id
                    	// of the 'div' element under a specific PHP condition.
                    	// So it should be reported here as a dangling reference.
                        var theDiv = document.getElementById("container");
                        if (theDiv.innerHtml == "Success") {
                                // Do something
                        }
                }
        </script>
</head>
<body>
<?php
        if ($_GET['session'] == 'new') {
        	// This variable has been defined under the condition that $_GET['session'] == 'new',
        	// but it is being refered to without the condition below. So it will be a dangling reference
        	$someVariable = 'someValue';
        }

        if ($_POST['username'] == 'johndoe' && $_POST['password'] == 'doe123') {
                $logged_in = TRUE;
        }
        
        // The two variables, $logged_in and $someVariable, are refered here without a conditional,
        // whereas they were declared above under some conditions. So we have dangling references here.
        if ($logged_in == TRUE && $someVariable == 'someOtherValue') {
        	// This condition above now is applied to the div declared below
        	// and so the id of the div (container) is an Html variable which is
        	// visible under these conditions only.
?>
                <div id="container">Success</div>
<?php
        }

?>
</body>
</html>

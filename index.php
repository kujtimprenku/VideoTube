<?php require_once("includes/header.php"); ?>
<?php 

    if(isset($_SESSION["userLoggedin"])){
        echo "User is logged in as " . $_SESSION["userLoggedin"];
    }else {
        echo "Not logged in";
    }

?>
<?php require_once("includes/footer.php"); ?>
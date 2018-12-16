<?php

class VideoDetailsFormProvider {

    private $con;

    public function __construct($con){
        $this->con = $con;
    }

    public function createUploadForm(){

        $fileInput = $this->createFileInput();
        $titleInput = $this->createTitleInput();
        $descriptionInput = $this->createDescriptionInput();
        $privacyInput = $this->createPrivacyInput();
        $categoriesInput = $this->createCategoriesInput();
        $uploadButton = $this->createUploadButton();

        return "<form action='processing.php' method='POST'>
                    $fileInput
                    $titleInput
                    $descriptionInput
                    $privacyInput
                    $categoriesInput
                    $uploadButton
                </form>";
    }

    private function createFileInput(){
        return "<div class='form-group'>
                    <label for='exampleFormControlFile1'>Your file</label>
                    <input type='file' class='form-control-file' name='fileInput' id='exampleFormControlFile1' required>
                </div>";
    }

    private function createTitleInput(){
        return "<div class='form-group'>
                    <input type='text' class='form-control' name='titleInput' placeholder='Title'>
                </div>";
    }

    private function createDescriptionInput(){
        return "<div class='form-group'>
                    <textarea placeholder='Description' class='form-control' name='descriptionInput' rows='3'></textarea>
                </div>";
    }

    private function createPrivacyInput(){
        return "<div class='form-group'>
                    <select class='form-control' name='privacyInput'>
                        <option value='0'>Private</option>
                        <option value='1'>Public</option>
                    </select>
                </div>";
    }

    private function createCategoriesInput(){
        $query = $this->con->prepare("SELECT * FROM categories");
        $query->execute();

        $html = "<div class='form-group'>
                    <select class='form-control' name='categoryInput'>";

        while($row = $query->fetch(PDO::FETCH_ASSOC)){
            $name =  $row['name'];
            $id = $row['id'];
            $html.= "<option value='$id'>$name</option>";
        }

        $html.= "   </select>
                </div>";
        return $html;
    }

    private function createUploadButton(){
        return "<button type='submit' class='btn btn-primary' name='uploadButton'>Upload</button>";
    }
}

?>
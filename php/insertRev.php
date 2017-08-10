<?php
/**
 * Created by PhpStorm.
 * User: Belal
 * Date: 04/02/17
 * Time: 7:51 PM
 */

//importing required script
require_once '../includes/DbOperation.php';

$response = array();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (!verifyRequiredParams(array('room_id', 'name', 'req_date', 'DoB' , 'ID', 'natinality' , 'degree', 'search' , 'work' , 'career' , 'phoneNo'))) {
        //getting values
        $room_id = $_POST['room_id'];
        $name = $_POST['name'];
		$req_date = $_POST['req_date'];
        $DoB = $_POST['DoB'];
		$ID = $_POST['ID'];
        $natinality = $_POST['natinality'];
		$degree = $_POST['degree'];
        $search = $_POST['search'];
		$work = $_POST['work'];
        $career = $_POST['career'];
		$phoneNo = $_POST['phoneNo'];
        
        

        //creating db operation object
        $db = new DbOperation();

        //adding user to database
        $result = $db->createRev($room_id, $name ,$req_date, $DoB, $ID, $natinality, $degree, $search, $work, $career, $phoneNo);

        //making the response accordingly
        if ($result == REV_CREATED) {
            $response['error'] = false;
            $response['message'] = 'Reversition created successfully';
       
        } elseif ($result == REV_NOT_CREATED) {
            $response['error'] = true;
            $response['message'] = 'Some error occurred';
        }
    } else {
        $response['error'] = true;
        $response['message'] = 'Required parameters are missing';
    }
} else {
    $response['error'] = true;
    $response['message'] = 'Invalid request';
}

//function to validate the required parameter in request
function verifyRequiredParams($required_fields)
{

    //Getting the request parameters
    $request_params = $_REQUEST;

    //Looping through all the parameters
    foreach ($required_fields as $field) {
        //if any requred parameter is missing
        if (!isset($request_params[$field]) || strlen(trim($request_params[$field])) <= 0) {

            //returning true;
            return true;
        }
    }
    return false;
}

echo json_encode($response);
?>
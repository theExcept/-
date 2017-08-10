<?php

//including the file dboperation
require_once '../includes/DbOperation.php';

//creating a response array to store data
$response = array();

//creating a key in the response array to insert values
//this key will store an array iteself
$response['rooms'] = array();


//creating object of class DbOperation
$db = new DbOperation();

//getting the data using the function we created
$roomGenral = $db->getAllRoomGenral();
$roomFemale= $db->getAllRoomFemale();
$reqID = $db->ViewMyStatusReqId();
$room_name= $db->ViewMyStatusRoomName();
$room_type= $db->ViewMyStatusRoomType();
$revDate= $db->ViewMyStatusRevDate();
$endDate= $db->ViewMyStatusEndDate();

//looping through all the genral rooms.
while($rooms = $roomGenral->fetch_assoc()){
    //creating a temporary array
    $temp = array();

    //inserting the team in the temporary array

    $temp['room_name']=$rooms['room_name'];
   

    //inserting the temporary array inside response
    array_push($response['roomGenral'],$temp);
}

while($rooms = $roomFemale->fetch_assoc()){
    //creating a temporary array
    $temp = array();

    //inserting the team in the temporary array

    $temp['room_name']=$rooms['room_name'];
   

    //inserting the temporary array inside response
    array_push($response['roomFemale'],$temp);
}

while($rooms = $reqID->fetch_assoc()){
    //creating a temporary array
    $temp = array();

    //inserting the team in the temporary array

    $temp['req_id']=$rooms['req_id'];
   

    //inserting the temporary array inside response
    array_push($response['req_id'],$temp);
}

while($rooms = $room_name->fetch_assoc()){
    //creating a temporary array
    $temp = array();

    //inserting the team in the temporary array

    $temp['room_name']=$rooms['room_name'];
   

    //inserting the temporary array inside response
    array_push($response['room_name'],$temp);
}

while($rooms = $room_type->fetch_assoc()){
    //creating a temporary array
    $temp = array();

    //inserting the team in the temporary array

    $temp['room_type']=$rooms['room_type'];
   

    //inserting the temporary array inside response
    array_push($response['room_type'],$temp);
}
//displaying the array in json format

while($rooms = $revDate->fetch_assoc()){
    //creating a temporary array
    $temp = array();

    //inserting the team in the temporary array

    $temp['rev_date']=$rooms['rev_date'];
   

    //inserting the temporary array inside response
    array_push($response['rev_date'],$temp);
}

while($rooms = $endDate->fetch_assoc()){
    //creating a temporary array
    $temp = array();

    //inserting the team in the temporary array

    $temp['end_date']=$rooms['end_date'];
   

    //inserting the temporary array inside response
    array_push($response['end_date'],$temp);
}
echo json_encode($response);
?>
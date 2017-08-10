<?php

/**
 * Created by PhpStorm.
 * User: Belal
 * Date: 04/02/17
 * Time: 7:51 PM
 */
class DbOperation
{
    private $conn;

    //Constructor
    function __construct()
    {
        require_once dirname(__FILE__) . '/Constants.php';
        require_once dirname(__FILE__) . '/DbConnect.php';
        // opening db connection
        $db = new DbConnect();
        $this->conn = $db->connect();
		

    }
	
	 public function userLogin($email, $pass)
    {
        $password = md5($pass);
        $stmt = $this->conn->prepare("SELECT user_id FROM users WHERE email = ? AND password = ?");
        $stmt->bind_param("ss", $email, $password);
        $stmt->execute();
        $stmt->store_result();
        return $stmt->num_rows > 0;
    }
	
 public function getUserByEmail($email)
    {
        $stmt = $this->conn->prepare("SELECT user_id, email FROM users WHERE email = ?");
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $stmt->bind_result($id, $email);
        $stmt->fetch();
        $user = array();
        $user['id'] = $id;
        
        $user['email'] = $email;
     
        return $user;
    }

    //Function to create a new user
    public function createUser($email, $password)
    {
        if (!$this->isUserExist($email, $password)) {
            $password = md5($pass);
            $stmt = $this->conn->prepare("INSERT INTO users (email, password) VALUES (?, ?)");
            $stmt->bind_param("sssss", $email, $password);
            if ($stmt->execute()) {
                return USER_CREATED;
            } else {
                return USER_NOT_CREATED;
            }
        } else {
            return USER_ALREADY_EXIST;
        }
    }
	//insert rev form
	 public function createRev($room_id, $name, $req_date , $DoB , $ID , $natinality , $degree , $search , $work , $career , $phoneNo )
    {
        
           
            $stmt = $this->conn->prepare("INSERT INTO revform (room_id, name, req_date, DoB , ID, natinality , degree, search , work , career , phoneNo) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            $stmt->bind_param("sssss", $room_id, $name , $req_date , $DoB , $ID , $natinality ,$degree ,$search ,$work, $career , $phoneNo );
            if ($stmt->execute()) {
                return REV_CREATED;
				 } else {
                return REV_NOT_CREATED;
            }
        } 
            
    


    private function isUserExist($email)
    {
        $stmt = $this->conn->prepare("SELECT user_id FROM users WHERE email = ? ");
        $stmt->bind_param("sss", $email, $password);
        $stmt->execute();
        $stmt->store_result();
        return $stmt->num_rows > 0;
    }
	
	 public function getAllRoomsGenral(){
        $stmt = $this->conn->prepare("SELECT * FROM room WHERE type='genral' AND status='Available'");
        $stmt->execute();
        $result = $stmt->get_result();
        return $result;
    }
	
	 public function getAllRoomsFemale(){
        $stmt = $this->conn->prepare("SELECT * FROM room WHERE type='female' AND status='Available'");
        $stmt->execute();
        $result = $stmt->get_result();
        return $result;
    }
	
	 public function ViewMyStatusReqId(){
        $stmt = $this->conn->prepare("SELECT req_id FROM  revlist WHERE room_id= ?");
        $stmt->execute();
        $result = $stmt->get_result();
        return $result;
    }
	
	 public function ViewMyStatusRoomName(){
        $stmt = $this->conn->prepare("SELECT room_name FROM  room WHERE room_id= ?");
        $stmt->execute();
        $result = $stmt->get_result();
        return $result;
    }
	 public function ViewMyStatusRevDate(){
        $stmt = $this->conn->prepare("SELECT rev_date FROM  revlist WHERE room_id= ?");
        $stmt->execute();
        $result = $stmt->get_result();
        return $result;
    }
	 public function ViewMyStatusEndDate(){
        $stmt = $this->conn->prepare("SELECT end_date FROM  revlist WHERE room_id= ?");
        $stmt->execute();
        $result = $stmt->get_result();
        return $result;
    }
	 public function ViewMyStatusRoomType(){
        $stmt = $this->conn->prepare("SELECT room_type FROM  revlist WHERE room_id= ?");
        $stmt->execute();
        $result = $stmt->get_result();
        return $result;
    }
	
}
?>
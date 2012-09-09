<?php

/**
 * UserIdentity represents the data needed to identity a user.
 * It contains the authentication method that checks if the provided
 * data can identity the user.
 */
class UserIdentity extends CUserIdentity
{
        private $_id;
        
        /**
         * $this->username : the username input by user
         * $this->password : the password input by user
         * @return boolean true/false
         */
	public function authenticate()
	{
            $username = strtolower($this->username);
            $user = User::model()->find('LOWER(username)=?', array($username));
            
            if($user === null)
            {
                $this->errorCode = self::ERROR_USERNAME_INVALID;
            }
            else
            {
                if($this->encryptPassword($this->password) === $user->password)
                {
                    $this->setId($user->id);
                    $this->username = $user->username;
                    $this->errorCode = self::ERROR_NONE;
                }
                else
                {
                    $this->errorCode = self::ERROR_PASSWORD_INVALID;
                }
            }
            
            return $this->errorCode === self::ERROR_NONE;
	}
        
        /**
         * Validate Password
         * @param type $password
         * return boolean true/false
         */
        public function encryptPassword($password)
        {
            return md5($password);
        }
        
        public function getId() {
            return $this->_id;
        }

        public function setId($id) {
            $this->_id = $id;
        }
}
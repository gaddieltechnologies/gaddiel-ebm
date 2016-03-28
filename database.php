<?php
class Database
	{
		private static $dbName = 'gaddiel_ebm' ;
		private static $dbHost = 'gaddieltech.fatcowmysql.com';
		private static $dbUsername = 'gaddiel_ebm';
		private static $dbUserPassword = 'ebm@123';
		 
		private static $cont  = null;
		 
		public function __construct() 
		{
			die('Init function is not allowed');
		}
		 
		public static function connect()
		{
		   // One connection through whole application
		   if ( null == self::$cont )
		   {     
			try
			{
			  self::$cont =  new PDO( "mysql:host=".self::$dbHost.";"."dbname=".self::$dbName, self::$dbUsername, self::$dbUserPassword); 
			}
			catch(PDOException $e)
			{
			  die($e->getMessage()); 
			}
		   }
		   return self::$cont;
		}
		 
		public static function disconnect()
		{
			self::$cont = null;
		}
	}
?>

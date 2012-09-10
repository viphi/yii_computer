<?php

class ViewAndThemeController extends Controller
{
        public $layout = '//layouts/column1';
        public $navData = '';
    
	public function actionIndex()
	{
		$this->render('index');
	}
        
        public function actionNewPage()
        {
            $this->layout = '//layouts/columnNewPage';
            
            // fake data
            $newsData = array();
            $newsData[0] = array('title'=>'Yii Go Video No.4_1_2', 'content'=>'How to operate views.');
            $newsData[1] = array('title'=>'Yii Go Video No.4_2', 'content'=>'Upload files in Yii.');
            
            $navData = array();
            $navData['YiiBlog'] = 'http://YiiBlog.info';
            $navData['YiiBook'] = 'http://YiiBook.com';
            $navData['YiiChina'] = 'http://YiiChina.org';
            $navData['YiiFramework'] = 'http://YiiFramework.com';
            $this->navData = $navData; // push data
            
            $this->render('newPage', array('newsData' => $newsData));
        }

	// Uncomment the following methods and override them if needed
	/*
	public function filters()
	{
		// return the filter configuration for this controller, e.g.:
		return array(
			'inlineFilterName',
			array(
				'class'=>'path.to.FilterClass',
				'propertyName'=>'propertyValue',
			),
		);
	}

	public function actions()
	{
		// return external action classes, e.g.:
		return array(
			'action1'=>'path.to.ActionClass',
			'action2'=>array(
				'class'=>'path.to.AnotherActionClass',
				'propertyName'=>'propertyValue',
			),
		);
	}
	*/
}
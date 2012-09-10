<?php 
// prepare data
//print_r($this->navData);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Acalia Development | Free CSS Template | Csstemplatesmarket.com</title>
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->baseUrl; ?>/css/style.css" media="screen" />
<script type="text/javascript" src="<?php echo Yii::app()->baseUrl; ?>/js/jquery.core.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->baseUrl; ?>/js/jquery.superfish.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->baseUrl; ?>/js/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->baseUrl; ?>/js/jquery.easing.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->baseUrl; ?>/js/jquery.scripts.js"></script>
</head>

<body>
<div id="wrap">
    <div class="top_corner"></div>
    <div id="main_container">
    
        <div id="header">
            <div id="logo"><a href="mainNewPage.php.html"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
            
            <a href="make-a-donation.html" class="make_donation"></a>
            
            <div id="menu">
                <ul>
                <?php $i=1; foreach($this->navData as $siteTitle => $link): ?>
                    <li><a <?php echo $i==1?'class="current"':'';?> href="<?php echo $link; ?>" title="" target="_blank"><?php echo $siteTitle; ?></a></li>
                <?php $i++; endforeach; ?>
                </ul>
            </div>
            
        
        </div>
        
        
        <div class="middle_banner">               
           
<div class="featured_slider">
      	<!-- begin: sliding featured banner -->
         <div id="featured_border" class="jcarousel-container">
            <div id="featured_wrapper" class="jcarousel-clip">
               <ul id="featured_images" class="jcarousel-list">
                  <li><img src="images/slider_photo.jpg" width="965" height="280" alt="" /></li>
                  <li><img src="images/slider_photo2.jpg" width="965" height="280" alt="" /></li>
                  <li><img src="images/slider_photo3.jpg" width="965" height="280" alt="" /></li>
                  <li><img src="images/slider_photo2.jpg" width="965" height="280" alt="" /></li>
               </ul>
            </div>
            <div id="featured_positioner_desc" class="jcarousel-container">
               <div id="featured_wrapper_desc" class="jcarousel-clip">
                  <ul id="featured_desc" class="jcarousel-list">                 
                     <li>
                        <div>
                           <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                           </p>
                        </div>
                     </li> 
                     <li>
                        <div>
                           <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                           </p>
                        </div>
                     </li> 
                     <li>
                        <div>
                           <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                           </p>
                        </div>
                     </li>  
                     <li>
                        <div>
                           <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                           </p>
                        </div>
                     </li> 
                  </ul>
               </div>

            </div>
            <ul id="featured_buttons" class="clear_fix">
               <li>1</li>
               <li>2</li>
               <li>3</li>
               <li>4</li>
            </ul>
         </div>
         <!-- end: sliding featured banner -->
</div>
          
        
        
        </div><!---------------------------------end of middle banner-------------------------------->
        
        
        <div class="center_content">
        
            <?php echo $content; ?>
            
            <div class="right_block">
            	<h2>Newsletter Sign up</h2>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit consequat.
                </p>
                <form id="newsletter">
                <input type="text" name="" class="newsletter_input" />
                <input type="submit" name="" class="newsletter_submit" value="Sign up" />
                </form>
            
            </div>
        
        
        
   
        
        <div class="clear"></div>
        </div>
        
        <div class="footer">
        	<div class="copyright"><a href="http://csstemplatesmarket.com/" target="_blank">Free CSS Templates</a> | <a href="http://csstemplatesmarket.com/" target="_blank">by CssTemplatesMarket</a></div>
        
        	<div class="footer_links">
                <a class="current" href="mainNewPage.php.html" title="">Home</a>
                <a href="#" title="">About Company</a>
                <a href="#" title="">Projects</a>
                <a href="#" title="">Clients</a>
                <a href="#" title="">Testimonials</a>
                <a href="contact.html" title="">Contact</a>            
            </div>
        </div>
      
      
    
    </div>
</div>
</body>
</html>

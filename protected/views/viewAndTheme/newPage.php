<?php
// test data
//print_r($newsData);
?>
<div class="home_section_left">
    <img src="images/icon1.gif" alt="" title="" class="home_section_icon" border="0">

        <h2 class="home_title">News</h2>
        <div class="home_subtitle">All news come from here</div>

        <div class="home_section_thumb">
        <img src="images/home_section_thumb1.jpg" alt="" title="" border="0">
        </div>
        <p>
        <?php foreach($newsData as $news): ?>
            <span><?php echo CHtml::link($news['title'], array('viewAndTheme/newsDetail', 'id'=>'115'), array('target'=>'_blank')); ?></span><br>
            <?php echo CHtml::encode($news['content']); ?><br> <br>
        <?php endforeach; ?>
        </p>
        <a href="" class="more"><img src="images/more.gif" alt="" title="" border="0"></a>
<div class="clear"></div>
</div>        
        
<div class="home_section_left">
    <img src="images/icon2.gif" alt="" title="" class="home_section_icon" border="0">

        <h2 class="home_title">Who we are</h2>
        <div class="home_subtitle">Tempor incididunt ut labore</div>

        <div class="home_section_thumb">
        <img src="images/home_section_thumb2.jpg" alt="" title="" border="0">
        </div>
        <p><span>Lorem ipsum dolor sit ame</span><br>
        Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore. 
        <br> <br>
        <span>Lorem ipsum dolor sit ame</span><br>
        Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore. 
        </p>
        <a href="" class="more"><img src="images/more.gif" alt="" title="" border="0"></a>
<div class="clear"></div>
</div>

<div class="home_section_left">
    <img src="images/icon3.gif" alt="" title="" class="home_section_icon" border="0">

        <h2 class="home_title">Special services</h2>
        <div class="home_subtitle">Sed do eiusmod tempor</div>

        <div class="home_section_thumb">
        <img src="images/home_section_thumb3.jpg" alt="" title="" border="0">
        </div>
        <p><span>Lorem ipsum dolor sit ame</span><br>
        Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore. 
        <br> <br>
        <span>Lorem ipsum dolor sit ame</span><br>
        Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore. 
        </p>
        <a href="" class="more"><img src="images/more.gif" alt="" title="" border="0"></a>
<div class="clear"></div>
</div>        
            
<div class="left_block_wide">
    <h2>Latest Projects</h2>

    <a href="#"><img src="images/p1.jpg" alt="" title="" border="0" class="projects" /></a>
    <a href="#"><img src="images/p2.jpg" alt="" title="" border="0" class="projects" /></a>
    <a href="#"><img src="images/p3.jpg" alt="" title="" border="0" class="projects" /></a>


</div>
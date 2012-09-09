<?php
/* @var $this NewsController */
/* @var $model News */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'news-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'news_title'); ?>
		<?php echo $form->textField($model,'news_title',array('size'=>60,'maxlength'=>128)); ?>
		<?php echo $form->error($model,'news_title'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'news_content'); ?>
		<?php
                //echo $form->textArea($model,'news_content',array('cols'=>80,'rows'=>15));
                $this->widget('application.extensions.editor.CKkceditor',array(
                "model"=>$model,                # Data-Model
                "attribute"=>'news_content',         # Attribute in the Data-Model
                "height"=>'400px',
                "width"=>'100%',
                "filespath"=>Yii::app()->basePath."/../upload/",
                "filesurl"=>Yii::app()->baseUrl."/upload/",
                ) );
                ?>
		<?php echo $form->error($model,'news_content'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'author_name'); ?>
		<?php echo $form->textField($model,'author_name',array('size'=>10,'maxlength'=>10)); ?>
		<?php echo $form->error($model,'author_name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'type_id'); ?>
		<?php echo $form->dropDownList($model, 'type_id', NewsType::model()->getNewsTypeList()); ?>
		<?php echo $form->error($model,'type_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'status_id'); ?>
		<?php echo $form->dropDownList($model, 'status_id', StatusType::model()->getStatusTypeList()); ?>
		<?php echo $form->error($model,'status_id'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
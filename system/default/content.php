<?php

//init require element on the content in section (object), rest part of section are include
require_once 'content/object/object.class.php';

$object = new ObjectContent($this->systemName(), $db, $this->currentLanguage, $this->admin);

$sectionId = $this->getSection()->id;

$label = $object->getAllLabel();

?>
<div class="container">

<!--    <div class="im-language">-->
<!--        <div class="row">-->
<!--            <div class="col-12">-->
<!--                --><?php
//                $object->displayLanguage();
//                ?>
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->

    <?php $object->display($sectionId, $label['top']); ?>

</div>

<div class="im-menu">

    <div class="container">

        <?php $object->display($sectionId, $label['logo'], 'begin'); ?>

        <?php $object->display($sectionId, $label['main-menu'], 'end,submenu'); ?>

    </div>

</div>

<div class="container-fluid m-0 p-0 text-shadow">

    <?php $object->display($sectionId, $label['slider-title']); ?>

    <?php $object->display($sectionId, $label['slider']); ?>

    <?php $object->display($sectionId, $label['slider-icon']); ?>

</div>



<div class="im-gradient-down">

    <div class="container">

        <?php $object->display($sectionId, $label['sentence-slider-bottom']); ?>

    </div>

</div>

<div class="im-content">

    <div class="container">

        <?php $object->display($sectionId, $label['content-begin']); ?>

        <?php $object->display($sectionId, $label['content'], 'begin'); ?>

        <?php $object->display($sectionId, $label['content-news'], 'begin,pagination:5'); ?>

        <?php $object->display($sectionId, $label['content-job'], 'begin'); ?>

        <?php $object->display($sectionId, $label['content-faq'], 'begin,pagination:10'); ?>

        <?php $object->display($sectionId, $label['content-supplier'], 'begin,pagination:8'); ?>

        <?php $object->display($sectionId, $label['department'], 'end'); ?>

        <?php $object->display($sectionId, $label['content-end']); ?>

        <?php $object->displayStatic($sectionId); ?>

    </div>

</div>

<div class="im-category">

    <div class="container">

        <?php $object->display($sectionId, $label['category'], 'scroll'); ?>

    </div>

</div>

<div class="container">

    <?php $object->display($sectionId, $label['short']); ?>

</div>

<div class="im-footer">

    <div class="container">

        <?php $object->display($sectionId, $label['footer'], 'scroll'); ?>

    </div>

</div>

<div class="container">

    <?php $object->display($sectionId, $label['copyright']); ?>

</div>

<?php

//Option:
//    //- parent (to section field, show child sections of current section)
//    //- begin, end (must be together) - connected 2 or more label group in one row
//    //- pagination always with :X on the right (number of objects show on one page of paging)
//    //- submenu show section name and his children via dropdown

?>

<?php //$object->display($sectionId, $label['submenu'], 'parent,begin'); ?>

<?php //$object->display($sectionId, $label['news'], 'begin'); ?>

<?php //$object->display($sectionId, $label['company-skill'], 'end,pagination:1'); ?>

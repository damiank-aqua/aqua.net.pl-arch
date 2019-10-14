<?php

//init require element on the content in section (object), rest part of section are include
require_once 'content/object/object.class.php';

$object = new ObjectContent($this->systemName(), $db, $this->currentLanguage, $this->admin);

$sectionId = $this->getSection()->id;

$label = $object->getAllLabel();

?>
<div class="container">

    <?php require_once $this->system.'/content/top.php'; ?>

    <?php //require_once $this->system.'/content/language.php'; ?>

    <?php //require_once $this->system.'/content/logo.php'; ?>

</div>

<div class="im-menu">

    <div class="container">

            <?php $object->display($sectionId, $label['menu']); ?>

    </div>

</div>

<div class="container-fluid">

    <?php $object->display($sectionId, $label['slider-icon']); ?>

    <?php $object->display($sectionId, $label['slider']); ?>

</div>



<div class="im-gradient-down">

    <div class="container">

        <?php $object->display($sectionId, $label['sentence']); ?>

    </div>

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

<?php //require_once $this->system.'/content/footer.php'; ?>

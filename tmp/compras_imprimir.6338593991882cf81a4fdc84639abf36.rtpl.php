<?php if(!class_exists('raintpl')){exit;}?><?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("header") . ( substr("header",-1,1) != "/" ? "/" : "" ) . basename("header") );?>


<?php if( $fsc->factura ){ ?>

<div class="text-center">
   <a href="<?php echo $fsc->factura->url();?>" class="btn btn-default">
      <span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> &nbsp; Volver
   </a>
</div>
<?php }elseif( $fsc->albaran ){ ?>

<div class="text-center">
   <a href="<?php echo $fsc->albaran->url();?>" class="btn btn-default">
      <span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> &nbsp; Volver
   </a>
</div>
<?php } ?>


<?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("footer") . ( substr("footer",-1,1) != "/" ? "/" : "" ) . basename("footer") );?>
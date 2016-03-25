<?php if(!class_exists('raintpl')){exit;}?><!--<?php echo $fsc->buscar_lineas;?>-->

<?php if( $fsc->get_errors() ){ ?>

   <div class="alert alert-danger">
      <ul><?php $loop_var1=$fsc->get_errors(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?><li><?php echo $value1;?></li><?php } ?></ul>
   </div>
<?php } ?>

<?php if( $fsc->get_messages() ){ ?>

   <div class="alert alert-success">
      <ul><?php $loop_var1=$fsc->get_messages(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?><li><?php echo $value1;?></li><?php } ?></ul>
   </div>
<?php } ?>


<table class="table table-hover">
   <thead>
      <tr>
         <th class="text-left text-capitalize"><?php  echo FS_ALBARAN;?></th>
         <th class="text-right">Cantidad</th>
         <th class="text-left">Artículo</th>
         <th class="text-right">Total+<?php  echo FS_IVA;?></th>
         <th class="text-right" width="90">Fecha</th>
      </tr>
   </thead>
   <?php $loop_var1=$fsc->lineas; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

   <tr<?php if( $value1->cantidad<=0 ){ ?> class="bg-warning"<?php } ?>>
      <td><a target="_blank" href="<?php echo $value1->url();?>"><?php echo $value1->show_codigo();?></a></td>
      <td class="text-right"><?php echo $value1->cantidad;?></td>
      <td><a target="_blank" href="<?php echo $value1->articulo_url();?>"><?php echo $value1->referencia;?></a> <?php echo $value1->descripcion;?></td>
      <td class="text-right"><?php echo $fsc->show_precio($value1->total_iva());?></td>
      <td class="text-right"><?php echo $value1->show_fecha();?></td>
   </tr>
   <?php }else{ ?>

   <tr class="warning">
      <td colspan="5">Sin resultados.</td>
   </tr>
   <?php } ?>

</table>

<?php if( $fsc->lineas ){ ?>

<ul class="pager">
   <?php if( $fsc->offset>0 ){ ?>

   <li class="previous">
      <a href="#" onclick="mas_resultados('-<?php echo count($fsc->lineas); ?>')">
         <span class="glyphicon glyphicon-chevron-left"></span> &nbsp; Anteriores
      </a>
   </li>
   <?php } ?>

   <?php if( count($fsc->lineas)==FS_ITEM_LIMIT ){ ?>

   <li class="next">
      <a href="#" onclick="mas_resultados('<?php echo count($fsc->lineas); ?>')">
         Siguientes &nbsp; <span class="glyphicon glyphicon-chevron-right"></span>
      </a>
   </li>
   <?php } ?>

</ul>
<?php } ?>
<?php if(!class_exists('raintpl')){exit;}?><?php if( $fsc->get_errors() ){ ?>

<div class="alert alert-danger">
   <ul><?php $loop_var1=$fsc->get_errors(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?><li><?php echo $value1;?></li><?php } ?></ul>
</div>
<?php } ?>

<?php if( $fsc->get_messages() ){ ?>

<div class="alert alert-success">
   <ul><?php $loop_var1=$fsc->get_messages(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?><li><?php echo $value1;?></li><?php } ?></ul>
</div>
<?php } ?>


<?php if( $fsc->articulo ){ ?>


<?php $equivalentes=$this->var['equivalentes']=$fsc->articulo->get_equivalentes();?>

<?php $compras=$this->var['compras']=$fsc->articulo->get_lineas_albaran_prov();?>

<?php $ventas=$this->var['ventas']=$fsc->articulo->get_lineas_albaran_cli();?>


<div role="tabpanel">
   <ul class="nav nav-tabs" role="tablist">
      <li role="presentation" class="active">
         <a href="#detalle_gen" aria-controls="detalle_gen" role="tab" data-toggle="tab">
            <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
            <span class="hidden-xs">&nbsp; Detalle</span>
         </a>
      </li>
      <?php if( $equivalentes ){ ?>

      <li role="presentation">
         <a href="#detalle_equivalentes" aria-controls="detalle_equivalentes" role="tab" data-toggle="tab">
            <span class="glyphicon glyphicon-random" aria-hidden="true"></span>
            <span class="hidden-xs">&nbsp; Equivalentes</span>
         </a>
      </li>
      <?php } ?>

      <?php if( $compras ){ ?>

      <li role="presentation">
         <a href="#detalle_compras" aria-controls="detalle_compras" role="tab" data-toggle="tab">
            <span class="glyphicon glyphicon-import" aria-hidden="true"></span>
            <span class="hidden-xs">&nbsp; Últimas compras</span>
         </a>
      </li>
      <?php } ?>

      <?php if( $ventas ){ ?>

      <li role="presentation">
         <a href="#detalle_ventas" aria-controls="detalle_ventas" role="tab" data-toggle="tab">
            <span class="glyphicon glyphicon-export" aria-hidden="true"></span>
            <span class="hidden-xs">&nbsp; Últimas ventas</span>
         </a>
      </li>
      <?php } ?>

   </ul>
   <div class="tab-content">
      <div role="tabpanel" class="tab-pane active" id="detalle_gen">
         <div class="table-responsive">
            <table class="table table-hover">
               <thead>
                  <tr>
                     <th class="text-left">Referencia</th>
                     <th class="text-right">Coste</th>
                     <th class="text-right">Precio</th>
                     <th class="text-right">Stock</th>
                     <th class="text-right">Mínimo</th>
                     <th class="text-right">Máximo</th>
                  </tr>
               </thead>
               <tr>
                  <td><a target="_blank" href="<?php echo $fsc->articulo->url();?>"><?php echo $fsc->articulo->referencia;?></a></td>
                  <td class="text-right">
                     <a href="#" onclick="add_articulo('<?php echo $fsc->articulo->referencia;?>','<?php echo $fsc->articulo->get_descripcion_64();?>','<?php echo $fsc->articulo->preciocoste();?>','0','<?php echo $fsc->articulo->codimpuesto;?>')">
                        <?php echo $fsc->show_precio($fsc->articulo->preciocoste());?>

                     </a>
                  </td>
                  <td class="text-right">
                     <a href="#" onclick="add_articulo('<?php echo $fsc->articulo->referencia;?>','<?php echo $fsc->articulo->get_descripcion_64();?>','<?php echo $fsc->articulo->pvp;?>','0','<?php echo $fsc->articulo->codimpuesto;?>')">
                        <?php echo $fsc->show_precio($fsc->articulo->pvp);?>

                     </a>
                  </td>
                  <td class="text-right"><?php echo $fsc->articulo->stockfis;?></td>
                  <td class="text-right"><?php echo $fsc->articulo->stockmin;?></td>
                  <td class="text-right"><?php echo $fsc->articulo->stockmax;?></td>
               </tr>
            </table>
         </div>
         <p style="margin: 5px;">
            <?php echo $fsc->articulo->descripcion;?>

            <br/>
            <?php echo $fsc->articulo->observaciones;?>

         </p>
      </div>
      <?php if( $equivalentes ){ ?>

      <div role="tabpanel" class="tab-pane" id="detalle_equivalentes">
         <div class="table-responsive">
            <table class="table table-hover">
               <thead>
                  <tr>
                     <th class="text-left">Artículo</th>
                     <th class="text-right">Precio</th>
                     <th class="text-right">Precio+<?php  echo FS_IVA;?></th>
                     <th class="text-right">Stock</th>
                  </tr>
               </thead>
               <?php $loop_var1=$equivalentes; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

               <tr>
                  <td>
                     <a href="#" onclick="add_articulo('<?php echo $value1->referencia;?>','<?php echo $value1->get_descripcion_64();?>','<?php echo $value1->pvp;?>','0','<?php echo $value1->get_iva();?>')">
                        <?php echo $value1->referencia;?>

                     </a>
                     <?php echo $value1->descripcion;?>

                  </td>
                  <td class="text-right"><?php echo $fsc->show_precio($value1->pvp);?></td>
                  <td class="text-right">
                     <a href="#" onclick="add_articulo('<?php echo $fsc->articulo->referencia;?>','<?php echo $fsc->articulo->get_descripcion_64();?>','<?php echo $value1->pvp;?>','0','<?php echo $fsc->articulo->codimpuesto;?>')">
                        <?php echo $fsc->show_precio($value1->pvp_iva());?>

                     </a>
                  </td>
                  <td class="text-right"><?php echo $value1->stockfis;?></td>
               </tr>
               <?php }else{ ?>

               <tr class="warning">
                  <td colspan="4" class="text-center">No hay artículos equivalentes.</td>
               </tr>
               <?php } ?>

            </table>
         </div>
      </div>
      <?php } ?>

      <div role="tabpanel" class="tab-pane" id="detalle_compras">
         <div class="table-responsive">
            <table class="table table-hover">
               <thead>
                  <tr>
                     <th class="text-left">Fecha</th>
                     <th class="text-left text-capitalize"><?php  echo FS_ALBARAN;?></th>
                     <th class="text-right">Cantidad</th>
                     <th class="text-right">Precio</th>
                     <th class="text-right">Dto</th>
                     <th class="text-right">Total+<?php  echo FS_IVA;?></th>
                  </tr>
               </thead>
               <?php $loop_var1=$compras; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

               <tr>
                  <td><?php echo $value1->show_fecha();?></td>
                  <td><a target="_blank" href="<?php echo $value1->url();?>"><?php echo $value1->show_codigo();?></a></td>
                  <td class="text-right"><?php echo $value1->cantidad;?></td>
                  <td class="text-right">
                     <a href="#" onclick="add_articulo('<?php echo $fsc->articulo->referencia;?>','<?php echo $fsc->articulo->get_descripcion_64();?>','<?php echo $value1->pvpunitario;?>','<?php echo $value1->dtopor;?>','<?php echo $fsc->articulo->codimpuesto;?>')">
                        <?php echo $fsc->show_precio($value1->pvpunitario);?>

                     </a>
                  </td>
                  <td class="text-right">
                     <a href="#" onclick="add_articulo('<?php echo $fsc->articulo->referencia;?>','<?php echo $fsc->articulo->get_descripcion_64();?>','<?php echo $value1->pvpunitario;?>','<?php echo $value1->dtopor;?>','<?php echo $fsc->articulo->codimpuesto;?>')">
                        <?php echo $fsc->show_numero($value1->dtopor);?> %
                     </a>
                  </td>
                  <td class="text-right">
                     <a href="#" onclick="add_articulo('<?php echo $fsc->articulo->referencia;?>','<?php echo $fsc->articulo->get_descripcion_64();?>','<?php echo $value1->pvpunitario;?>','<?php echo $value1->dtopor;?>','<?php echo $fsc->articulo->codimpuesto;?>')">
                        <?php echo $fsc->show_precio($value1->total_iva2());?>

                     </a>
                  </td>
               </tr>
               <?php }else{ ?>

               <tr class="warning">
                  <td colspan="5" class="text-center">Nunca se ha comprado este artículo.</td>
               </tr>
               <?php } ?>

            </table>
         </div>
      </div>
      <div role="tabpanel" class="tab-pane" id="detalle_ventas">
         <div class="table-responsive">
            <table class="table table-hover">
               <thead>
                  <tr>
                     <th class="text-left">Fecha</th>
                     <th class="text-left text-capitalize"><?php  echo FS_ALBARAN;?></th>
                     <th class="text-right">Cantidad</th>
                     <th class="text-right">Precio</th>
                     <th class="text-right">Dto</th>
                     <th class="text-right">Total+<?php  echo FS_IVA;?></th>
                  </tr>
               </thead>
               <?php $loop_var1=$ventas; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

               <tr>
                  <td><?php echo $value1->show_fecha();?></td>
                  <td><a target="_blank" href="<?php echo $value1->url();?>"><?php echo $value1->show_codigo();?></a></td>
                  <td class="text-right"><?php echo $value1->cantidad;?></td>
                  <td class="text-right">
                     <a href="#" onclick="add_articulo('<?php echo $fsc->articulo->referencia;?>','<?php echo $fsc->articulo->get_descripcion_64();?>','<?php echo $value1->pvpunitario;?>','<?php echo $value1->dtopor;?>','<?php echo $fsc->articulo->codimpuesto;?>')">
                        <?php echo $fsc->show_precio($value1->pvpunitario);?>

                     </a>
                  </td>
                  <td class="text-right">
                     <a href="#" onclick="add_articulo('<?php echo $fsc->articulo->referencia;?>','<?php echo $fsc->articulo->get_descripcion_64();?>','<?php echo $value1->pvpunitario;?>','<?php echo $value1->dtopor;?>','<?php echo $fsc->articulo->codimpuesto;?>')">
                        <?php echo $fsc->show_numero($value1->dtopor, 2);?> %
                     </a>
                  </td>
                  <td class="text-right">
                     <a href="#" onclick="add_articulo('<?php echo $fsc->articulo->referencia;?>','<?php echo $fsc->articulo->get_descripcion_64();?>','<?php echo $value1->pvpunitario;?>','<?php echo $value1->dtopor;?>','<?php echo $fsc->articulo->codimpuesto;?>')">
                        <?php echo $fsc->show_precio($value1->total_iva2());?>

                     </a>
                  </td>
               </tr>
               <?php }else{ ?>

               <tr class="warning">
                  <td colspan="5" class="text-center">Nunca se va vendido este artículo.</td>
               </tr>
               <?php } ?>

            </table>
         </div>
      </div>
   </div>
</div>
<?php } ?>
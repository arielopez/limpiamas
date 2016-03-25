<?php if(!class_exists('raintpl')){exit;}?><?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("header") . ( substr("header",-1,1) != "/" ? "/" : "" ) . basename("header") );?>


<div class="container-fluid" style="margin-top: 10px;">
   <div class="row">
      <div class="col-sm-6">
         <?php if( $fsc->documento ){ ?>

         <a class="btn btn-sm btn-default" href="<?php echo $fsc->url();?>" title="Recargar la página">
            <span class="glyphicon glyphicon-refresh"></span>
         </a>
         <a class="btn btn-sm btn-default" href="<?php echo $fsc->documento->url();?>">
            <span class="glyphicon glyphicon-arrow-left"></span>
            <span class="hidden-xs">&nbsp; Documento</span>
         </a>
         <?php } ?>

         <div class="btn-group">
         <?php $loop_var1=$fsc->extensions; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

            <?php if( $value1->type=='button' ){ ?>

            <a href="index.php?page=<?php echo $value1->from;?><?php echo $value1->params;?>" class="btn btn-sm btn-default"><?php echo $value1->text;?></a>
            <?php } ?>

         <?php } ?>

         </div>
      </div>
      <div class="col-sm-6 text-right text-capitalize">
         <h2 style="margin-top: 0px;">Precios <?php echo $fsc->documento->nombre;?></h2>
      </div>
   </div>
   <div class="row">
      <div class="col-sm-12">
         <p class="text-justify">
            Desde aquí puedes actualizar los datos de tus artículos a partir de las líneas
            del <b><?php echo $fsc->tipodoc;?></b>.
            <mark>Coloca el puntero del ratón sobre un precio para ver el precio actual del artículo</mark>.
            Usa los <span class="glyphicon glyphicon-check" aria-hidden="true"></span>
            para elegir qué es lo que quieres actualizar y lo que no.
         </p>
      </div>
   </div>
</div>

<?php if( $fsc->documento ){ ?>

<form action="<?php echo $fsc->url();?>" method="post" class="form">
   <div class="table-responsive">
      <table class="table table-hover">
         <thead>
            <tr>
               <th width="40"></th>
               <th width="180">Ref. Proveedor</th>
               <th width="150">Referencia</th>
               <th>Descripción</th>
               <th width="200">Código de barras</th>
               <th class="text-right" width="150">Precio de compra</th>
               <th class="text-right" width="120">% dto. compra</th>
               <th class="text-right" width="180">Precio de venta</th>
            </tr>
         </thead>
         <?php $loop_var1=$fsc->lineas; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

         <tr>
            <td class="text-right">
               <div class="checkbox">
                  <label>
                     <input class="cb_update" type="checkbox" name="update_<?php echo $value1->idlinea;?>" value="TRUE" checked="checked"/>
                  </label>
               </div>
            </td>
            <td><input type="text" name="refproveedor_<?php echo $value1->idlinea;?>" value="<?php echo $value1->refproveedor;?>" class="form-control" autocomplete="off"/></td>
            <td><input type="text" name="referencia_<?php echo $value1->idlinea;?>" value="<?php echo $value1->referencia;?>" class="form-control" disabled="disabled"/></td>
            <td><input type="text" name="descripcion_<?php echo $value1->idlinea;?>" value="<?php echo $value1->descripcion;?>" class="form-control" autocomplete="off"/></td>
            <td><input type="text" name="codbarras_<?php echo $value1->idlinea;?>" value="<?php echo $value1->codbarras;?>" class="form-control" autocomplete="off"/></td>
            <td>
               <input type="text" name="coste_<?php echo $value1->idlinea;?>" value="<?php echo $value1->pvpunitario;?>" class="form-control text-right" title="Actual: <?php echo $fsc->show_precio($value1->precio_compra);?>" autocomplete="off"/>
            </td>
            <td>
               <input type="text" name="dto_<?php echo $value1->idlinea;?>" value="<?php echo $value1->dtopor;?>" class="form-control text-right" title="Actual: <?php echo $fsc->show_numero($value1->dto_compra);?> %" autocomplete="off"/>
            </td>
            <td>
               <input type="text" name="pvp_<?php echo $value1->idlinea;?>" value="<?php echo $value1->pvpunitario;?>" class="form-control text-right" title="Actual: <?php echo $fsc->show_precio($value1->precio_venta);?>" autocomplete="off"/>
            </td>
         </tr>
         <?php } ?>

         <tr>
            <td colspan="3"></td>
            <td>
               <div class="checkbox">
                  <label>
                     <input type="checkbox" name="descripciones" value="TRUE"/> actualizar descripciones
                  </label>
               </div>
            </td>
            <td>
               <div class="checkbox">
                  <label>
                     <input type="checkbox" name="codbarras" value="TRUE"/> actualizar códigos de barras
                  </label>
               </div>
            </td>
            <td colspan="3">
               <div class="checkbox text-right">
                  <label>
                     <input type="checkbox" name="pvps" value="TRUE"/> actualizar precios de venta
                  </label>
               </div>
            </td>
         </tr>
      </table>
   </div>
   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-12 text-right">
            <button class="btn btn-sm btn-primary" type="submit" onclick="this.disabled=true;this.form.submit();">
               <span class="glyphicon glyphicon-floppy-disk"></span> &nbsp; Guardar
            </button>
         </div>
      </div>
   </div>
</form>
<?php } ?>


<?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("footer") . ( substr("footer",-1,1) != "/" ? "/" : "" ) . basename("footer") );?>
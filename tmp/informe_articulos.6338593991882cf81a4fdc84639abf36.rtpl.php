<?php if(!class_exists('raintpl')){exit;}?><?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("header") . ( substr("header",-1,1) != "/" ? "/" : "" ) . basename("header") );?>


<ul class="nav nav-tabs">
   <li role="presentation"<?php if( $fsc->pestanya=='stats' ){ ?> class="active"<?php } ?>>
      <a href="<?php echo $fsc->url();?>">
         <span class="glyphicon glyphicon-stats" aria-hidden="true"></span>
         <span class="hidden-xs">&nbsp; Estadísticas</span>
      </a>
   </li>
   <li role="presentation"<?php if( $fsc->pestanya=='stock' ){ ?> class="active"<?php } ?>>
      <a href="<?php echo $fsc->url();?>&tab=stock">
         <span class="glyphicon glyphicon-tasks" aria-hidden="true"></span>
         <span class="hidden-xs">&nbsp; Stock</span>
      </a>
   </li>
   <li role="presentation"<?php if( $fsc->pestanya=='impuestos' ){ ?> class="active"<?php } ?>>
      <a href="<?php echo $fsc->url();?>&tab=impuestos">
         <span class="glyphicon glyphicon-magnet" aria-hidden="true"></span>
         <span class="hidden-xs">&nbsp; Impuestos</span>
      </a>
   </li>
   <li role="presentation"<?php if( $fsc->pestanya=='search' ){ ?> class="active"<?php } ?>>
      <a href="<?php echo $fsc->url();?>&tab=search">
         <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
      </a>
   </li>
</ul>

<?php if( $fsc->pestanya=='stats' ){ ?>

<div class="container-fluid" style="margin-top: 10px; margin-bottom: 20px;">
   <div class="row">
      <div class="col-md-12">
         <p>
            Hay un total de <b><?php echo $fsc->show_numero($fsc->stats['total'], 0);?></b> artículos,
            <b><?php echo $fsc->show_numero($fsc->stats['con_stock'], 0);?></b> de ellos tienen stock,
            <b><?php echo $fsc->show_numero($fsc->stats['publicos'], 0);?></b> son públicos
            y <b><?php echo $fsc->show_numero($fsc->stats['bloqueados'], 0);?></b> están bloqueados.
            La última actualización de precio de un artículo es del <b><?php echo $fsc->stats['factualizado'];?></b>.
         </p>
      </div>
   </div>
   <div class="row">
      <div class="col-md-12">
         <div class="panel panel-info">
            <div class="panel-heading">
               <h3 class="panel-title">Top ventas (desde hace un mes)</h3>
            </div>
            <div class="table-responsive">
               <table class="table table-hover">
                  <thead>
                     <tr>
                        <th>Referencia + Descripción</th>
                        <th class="text-right">Vendido</th>
                        <th class="text-right">Total</th>
                     </tr>
                  </thead>
                  <?php $loop_var1=$fsc->top_ventas; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

                  <tr>
                     <td>
                        <a href="<?php echo $value1['articulo']->url();?>"><?php echo $value1['articulo']->referencia;?></a>
                        <?php echo $value1['articulo']->descripcion;?>

                     </td>
                     <td class="text-right"><?php echo $value1['unidades'];?></td>
                     <td class="text-right"><?php echo $fsc->show_precio($value1['total']);?></td>
                  </tr>
                  <?php }else{ ?>

                  <tr class="warning">
                     <td colspan="3">Sin resultados.</td>
                  </tr>
                  <?php } ?>

               </table>
            </div>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-md-12">
         <div class="panel panel-warning">
            <div class="panel-heading">
               <h3 class="panel-title">Top artículos con stock aun no vendidos este año</h3>
            </div>
            <div class="panel-body">
               <div class="container-fluid">
                  <div class="row">
                     <?php $loop_var1=$fsc->sin_vender; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

                     <div class="col-sm-4">
                        <a href="<?php echo $value1->url();?>"><?php echo $value1->referencia;?></a>
                        <?php echo $value1->descripcion;?>

                        <span class="badge"><?php echo $value1->stockfis;?></span>
                     </div>
                     <?php }else{ ?>

                     <div class="col-sm-12">Sin resultados.</div>
                     <?php } ?>

                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-md-12">
         <div class="panel panel-default">
            <div class="panel-heading">
               <h3 class="panel-title">Top compras (Unidades)</h3>
            </div>
            <div class="panel-body">
               <div class="container-fluid">
                  <div class="row">
                     <?php $loop_var1=$fsc->top_compras; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

                     <div class="col-sm-4">
                        <a href="<?php echo $value1["0"]->url();?>"><?php echo $value1["0"]->referencia;?></a>
                        <?php echo $value1["0"]->descripcion;?>

                        <span class="badge"><?php echo $value1["1"];?></span>
                     </div>
                     <?php }else{ ?>

                     <div class="col-sm-12">Sin resultados.</div>
                     <?php } ?>

                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-md-12">
         <div class="panel panel-default">
            <div class="panel-heading">
               <h3 class="panel-title">Búsquedas de artículos</h3>
            </div>
            <div class="panel-body">
               <div class="container-fluid">
                  <div class="row">
                     <?php $loop_var1=$fsc->articulo->get_search_tags(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

                     <div class="col-lg-3 col-md-3 col-sm-3"><?php echo $value1["tag"];?> (<?php echo $value1["count"];?>)</div>
                     <?php }else{ ?>

                     <div class="col-lg-12 col-md-12 col-sm-12">Ninguna búsqueda realizada.</div>
                     <?php } ?>

                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<?php }elseif( $fsc->pestanya=='stock' ){ ?>

<div class="container-fluid" style="margin-top: 15px; margin-bottom: 10px;">
   <div class="row">
      <div class="col-sm-9">
         <div class="btn-group" role="group" aria-label="...">
            <a href="<?php echo $fsc->url();?>&tab=stock" class="btn btn-sm btn-default<?php if( $fsc->tipo_stock=='todo' ){ ?> active<?php } ?>">Todo</a>
            <a href="<?php echo $fsc->url();?>&tab=stock&tipo=min" class="btn btn-sm btn-default<?php if( $fsc->tipo_stock=='min' ){ ?> active<?php } ?>">Bajo mínimos</a>
            <a href="<?php echo $fsc->url();?>&tab=stock&tipo=max" class="btn btn-sm btn-default<?php if( $fsc->tipo_stock=='max' ){ ?> active<?php } ?>">Excesos</a>
            <a href="<?php echo $fsc->url();?>&tab=stock&tipo=reg" class="btn btn-sm btn-default<?php if( $fsc->tipo_stock=='reg' ){ ?> active<?php } ?>">
               Regularizaciones
            </a>
         </div>
      </div>
      <div class="col-sm-3 text-right">
         <?php if( $fsc->tipo_stock!='reg' ){ ?>

         <a href="<?php echo $fsc->url();?>&tab=stock&tipo=<?php echo $fsc->tipo_stock;?>&download=TRUE" class="btn btn-sm btn-default">
            <span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span> &nbsp; Descargar
         </a>
         <?php } ?>

      </div>
   </div>
</div>
<div class="table-responsive">
   <?php if( $fsc->tipo_stock=='reg' ){ ?>

   <table class="table table-hover">
      <thead>
         <tr>
            <th class="text-left">Almacén</th>
            <th class="text-left">Artículo</th>
            <th class="text-right">Cant. inicial</th>
            <th class="text-right">Cant. final</th>
            <th class="text-left">Usuario</th>
            <th class="text-left">Motivo</th>
            <th class="text-right">Fecha</th>
            <th class="text-right">Hora</th>
         </tr>
      </thead>
      <?php $loop_var1=$fsc->resultados; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

      <tr class="clickableRow<?php if( intval($value1['cantidadfin'])<intval($value1['cantidadini']) ){ ?> bg-danger<?php } ?>" href="index.php?page=ventas_articulo&ref=<?php echo $value1['referencia'];?>">
         <td><?php echo $value1['codalmacen'];?></td>
         <td><a href="index.php?page=ventas_articulo&ref=<?php echo $value1['referencia'];?>"><?php echo $value1['referencia'];?></a> <?php echo $value1['descripcion'];?></td>
         <td class="text-right"><?php echo $value1['cantidadini'];?></td>
         <td class="text-right"><?php echo $value1['cantidadfin'];?></td>
         <td><?php echo $value1['nick'];?></td>
         <td><?php echo $value1['motivo'];?></td>
         <td class="text-right"><?php echo $value1['fecha'];?></td>
         <td class="text-right"><?php echo $value1['hora'];?></td>
      </tr>
      <?php }else{ ?>

      <tr class="warning">
         <td colspan="8">Sin resultados.</td>
      </tr>
      <?php } ?>

   </table>
   <?php }else{ ?>

   <table class="table table-hover">
      <thead>
         <tr>
            <th class="text-left">Almacén</th>
            <th class="text-left">Artículo</th>
            <th class="text-right">Stock</th>
            <th class="text-right">Mínimo</th>
            <th class="text-right">Máximo</th>
         </tr>
      </thead>
      <?php $loop_var1=$fsc->resultados; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

      <tr class="clickableRow<?php if( intval($value1['cantidad'])<intval($value1['stockmin']) ){ ?> danger<?php } ?>" href="index.php?page=ventas_articulo&ref=<?php echo $value1['referencia'];?>">
         <td><?php echo $value1['codalmacen'];?></td>
         <td><a href="index.php?page=ventas_articulo&ref=<?php echo $value1['referencia'];?>"><?php echo $value1['referencia'];?></a> <?php echo $value1['descripcion'];?></td>
         <td class="text-right"><?php echo $value1['cantidad'];?></td>
         <td class="text-right"><?php echo $value1['stockmin'];?></td>
         <td class="text-right"><?php echo $value1['stockmax'];?></td>
      </tr>
      <?php }else{ ?>

      <tr class="warning">
         <td colspan="5">Sin resultados.</td>
      </tr>
      <?php } ?>

   </table>
   <?php } ?>

</div>

<ul class="pager" id="ul_paginador">
   <?php if( $fsc->anterior_url()!='' ){ ?>

   <li class="previous">
      <a href="<?php echo $fsc->anterior_url();?>">
         <span class="glyphicon glyphicon-chevron-left"></span> &nbsp; Anteriores
      </a>
   </li>
   <?php } ?>

   
   <?php if( $fsc->siguiente_url()!='' ){ ?>

   <li class="next">
      <a href="<?php echo $fsc->siguiente_url();?>">
         Siguientes &nbsp; <span class="glyphicon glyphicon-chevron-right"></span>
      </a>
   </li>
   <?php } ?>

</ul>
<?php }elseif( $fsc->pestanya=='impuestos' ){ ?>

<br/>
<form action="<?php echo $fsc->url();?>&tab=impuestos" method="post" class="form">
   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-3">
            <div class="form-group">
               <a href="<?php echo $fsc->impuesto->url();?>">Impuesto</a>
               <select name="codimpuesto" class="form-control" onchange="this.form.submit()">
                  <?php $loop_var1=$fsc->impuesto->all(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

                     <?php if( $value1->codimpuesto==$fsc->codimpuesto ){ ?>

                     <option value="<?php echo $value1->codimpuesto;?>" selected=""><?php echo $value1->descripcion;?></option>
                     <?php }else{ ?>

                     <option value="<?php echo $value1->codimpuesto;?>"><?php echo $value1->descripcion;?></option>
                     <?php } ?>

                  <?php } ?>

                  <option value="">------</option>
                  <?php if( $fsc->codimpuesto=='' ){ ?>

                  <option value="" selected="">Sin impuesto</option>
                  <?php }else{ ?>

                  <option value="">Sin impuesto</option>
                  <?php } ?>

               </select>
            </div>
         </div>
         <div class="col-sm-2">
            <br/>
            <button class="btn btn-sm btn-primary" type="submit" onclick="this.disabled=true;this.form.submit();">
               <span class="glyphicon glyphicon-eye-open"></span> &nbsp; Mostrar
            </button>
         </div>
         <div class="col-sm-4">
         </div>
         <div class="col-sm-3">
            <div class="form-group">
               Cambiar a
               <select name="new_codimpuesto" class="form-control" onchange="this.form.submit()">
                  <option value="">(Sin cambios)</option>
                  <option value="">------</option>
                  <?php $loop_var1=$fsc->impuesto->all(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

                  <option value="<?php echo $value1->codimpuesto;?>"><?php echo $value1->descripcion;?></option>
                  <?php } ?>

               </select>
            </div>
         </div>
      </div>
   </div>
</form>
<div class="table-responsive">
   <table class="table table-hover">
      <thead>
         <tr>
            <th class="text-left">Familia</th>
            <th class="text-left">Fabricante</th>
            <th class="text-left">Referencia + Descripción</th>
            <th class="text-right">Precio</th>
            <th class="text-right">Impuesto</th>
            <th class="text-right">Precio+<?php  echo FS_IVA;?></th>
            <th class="text-right">Stock</th>
            <th class="text-right"></th>
         </tr>
      </thead>
      <?php $loop_var1=$fsc->resultados; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

      <tr class='clickableRow<?php if( $value1->bloqueado ){ ?> danger<?php }elseif( $value1->stockfis<=$value1->stockmin ){ ?> warning<?php } ?>' href='<?php echo $value1->url();?>'>
         <td>
            <?php if( is_null($value1->codfamilia) ){ ?>

            <span>-</span>
            <?php }else{ ?>

            <?php echo $value1->codfamilia;?>

            <a href="index.php?page=ventas_familia&cod=<?php echo $value1->codfamilia;?>" class="cancel_clickable" title="Ver más artículos de esta familia">[+]</a>
            <?php } ?>

         </td>
         <td>
            <?php if( is_null($value1->codfabricante) ){ ?>

            <span>-</span>
            <?php }else{ ?>

            <?php echo $value1->codfabricante;?>

            <a href="index.php?page=ventas_fabricante&cod=<?php echo $value1->codfabricante;?>" class="cancel_clickable" title="Ver más artículos de este fabricante">[+]</a>
            <?php } ?>

         </td>
         <td><a href="<?php echo $value1->url();?>"><?php echo $value1->referencia;?></a> <?php echo $value1->descripcion;?></td>
         <td class="text-right"><span title="actualizado el <?php echo $value1->factualizado;?>"><?php echo $fsc->show_precio($value1->pvp);?></span></td>
         <td class="text-right info"><?php echo $value1->codimpuesto;?></td>
         <td class="text-right"><span title="actualizado el <?php echo $value1->factualizado;?>"><?php echo $fsc->show_precio($value1->pvp_iva());?></span></td>
         <td class="text-right">
            <?php if( $value1->nostock ){ ?>-<?php }else{ ?><?php echo $value1->stockfis;?><?php } ?>

         </td>
         <td class="text-right">
            <?php if( $value1->publico ){ ?>

            <span class="glyphicon glyphicon-globe" aria-hidden="true" title="Artículo público"></span>
            <?php } ?>

         </td>
      </tr>
      <?php }else{ ?>

      <tr class="warning">
         <td colspan="8">Ningun artículo encontrado.</td>
      </tr>
      <?php } ?>

   </table>
</div>
<?php }elseif( $fsc->pestanya=='search' ){ ?>

<script type="text/javascript">
   $(document).ready(function() {
      $("#ac_referencia").autocomplete({
         serviceUrl: '<?php echo $fsc->url();?>',
         paramName: 'buscar_referencia',
         onSelect: function (suggestion) {
            if(suggestion)
            {
               if(document.f_informe_articulo.referencia.value != suggestion.data)
               {
                  document.f_informe_articulo.referencia.value = suggestion.data;
               }
            }
         }
      });
   });
</script>

<form name="f_informe_articulo" action="<?php echo $fsc->url();?>&tab=search" method="post" class="form">
   <input type="hidden" name="referencia" value="<?php echo $fsc->referencia;?>"/>
   <div class="container-fluid" style="margin-top: 15px;">
      <div class="row">
         <div class="col-sm-3">
            <div class="form-group">
               Referencia:
               <input class="form-control" type="text" name="ac_referencia" value="<?php echo $fsc->referencia;?>" id="ac_referencia" maxlength="18" placeholder="referencia" autocomplete="off"/>
            </div>
         </div>
         <div class="col-sm-3">
            <div class="form-group">
               Desde:
               <input class="form-control datepicker" type="text" name="desde" value="<?php echo $fsc->desde;?>"/>
            </div>
         </div>
         <div class="col-sm-3">
            <div class="form-group">
               Hasta:
               <input class="form-control datepicker" type="text" name="hasta" value="<?php echo $fsc->hasta;?>"/>
            </div>
         </div>
         <div class="col-sm-3">
            <div class="form-group">
               Explorar:
               <select name="documento" class="form-control" onchange="this.form.submit();">
                  <option value="facturascli"<?php if( $fsc->documento=='facturascli' ){ ?> selected=""<?php } ?>>Facturas de venta</option>
                  <option value="facturasprov"<?php if( $fsc->documento=='facturasprov' ){ ?> selected=""<?php } ?>>Facturas de compra</option>
               </select>
            </div>
         </div>
      </div>
      <div class="row">
         <div class="col-sm-12">
            <button class="btn btn-sm btn-primary" type="submit" onclick="this.disabled=true;this.form.submit();">
               <span class="glyphicon glyphicon-eye-open"></span> &nbsp; Mostrar
            </button>
         </div>
      </div>
   </div>
   <?php if( $fsc->resultados ){ ?>

   <br/>
   <div class="table-responsive">
      <table class="table table-hover">
         <thead>
            <tr>
               <th>Fecha</th>
               <th>Factura</th>
               <th>Nombre</th>
               <th>Empleado</th>
               <th class="text-right">Cantidad</th>
               <th class="text-right">Precio</th>
               <th class="text-right">Dto.</th>
               <th class="text-right">Neto</th>
               <th class="text-right">Total</th>
            </tr>
         </thead>
         <!--<?php $total=$this->var['total']=0;?>-->
         <!--<?php $cantidad=$this->var['cantidad']=0;?>-->
         <?php $loop_var1=$fsc->resultados; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

         <tr<?php if( $value1['pagada'] ){ ?> class='success'<?php } ?>>
            <td><?php echo $value1['fecha'];?></td>
            <td><a href="<?php echo $value1['url'];?>"><?php echo $value1['codigo'];?></a></td>
            <td><?php echo $value1['nombre'];?></td>
            <td><?php echo $value1['agente'];?></td>
            <td class="text-right"><?php echo $value1['cantidad'];?></td>
            <td class="text-right"><?php echo $fsc->show_precio($value1['pvpunitario']);?></td>
            <td class="text-right"><?php echo $fsc->show_numero($value1['dtopor']);?> %</td>
            <td class="text-right"><?php echo $fsc->show_precio($value1['pvptotal']);?></td>
            <td class="text-right">
               <?php echo $fsc->show_precio($value1['total']);?>

               <!--<?php $total=$this->var['total']=$total+$value1['total'];?>-->
               <!--<?php $cantidad=$this->var['cantidad']=$cantidad+$value1['cantidad'];?>-->
            </td>
         </tr>
         <?php } ?>

         <tr>
            <td colspan="5" class="text-right"><b><?php echo $cantidad;?></b></td>
            <td colspan="4" class="text-right"><b><?php echo $fsc->show_precio($total);?></b></td>
         </tr>
      </table>
   </div>
   <?php } ?>

</form>
<?php } ?>


<?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("footer") . ( substr("footer",-1,1) != "/" ? "/" : "" ) . basename("footer") );?>
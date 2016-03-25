<?php if(!class_exists('raintpl')){exit;}?><?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("header") . ( substr("header",-1,1) != "/" ? "/" : "" ) . basename("header") );?>


<ul class="nav nav-tabs">
   <li role="presentation"<?php if( $fsc->mostrar=='stats' ){ ?> class="active"<?php } ?>>
      <a href="<?php echo $fsc->url();?>">
         <span class="glyphicon glyphicon-stats" aria-hidden="true"></span>
         <span class="hidden-xs">&nbsp; Estadísticas</span>
      </a>
   </li>
   <li role="presentation"<?php if( $fsc->mostrar=='listado' ){ ?> class="active"<?php } ?>>
      <a href="<?php echo $fsc->url();?>&mostrar=listado">
         <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
         <span class="hidden-xs">&nbsp; Listado</span>
      </a>
   </li>
</ul>

<?php if( $fsc->mostrar=='stats' ){ ?>

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
   // Load the Visualization API and the piechart package.
   google.load('visualization', '1.0', {'packages':['corechart']});
   
   // Set a callback to run when the Google Visualization API is loaded.
   google.setOnLoadCallback(drawChart);
   
   // Callback that creates and populates a data table,
   // instantiates the pie chart, passes in the data and
   // draws it.
   function drawChart()
   {
      // Create the data table.
      var data = new google.visualization.DataTable();
      data.addColumn('string', 'día');
      data.addColumn('number', 'ventas <?php echo $fsc->simbolo_divisa();?>');
      data.addColumn('number', 'compras <?php echo $fsc->simbolo_divisa();?>');
      <?php if( $fsc->prestashop ){ ?>

      data.addColumn('number', 'PrestaShop <?php echo $fsc->simbolo_divisa();?>');
      data.addRows([
      <?php $loop_var1=$fsc->stats_last_days(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

         ['<?php echo $value1['day'];?>', <?php echo $value1['total_cli'];?>, <?php echo $value1['total_pro'];?>, <?php echo $value1['total_ps'];?>],
      <?php } ?>

      ]);
      <?php }else{ ?>

      data.addRows([
      <?php $loop_var1=$fsc->stats_last_days(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

         ['<?php echo $value1['day'];?>', <?php echo $value1['total_cli'];?>, <?php echo $value1['total_pro'];?>],
      <?php } ?>

      ]);
      <?php } ?>

      
      // Instantiate and draw our chart, passing in some options.
      var chart = new google.visualization.ColumnChart(document.getElementById('chart_pedidos_day'));
      chart.draw(data);
      
      // Create the data table.
      var data2 = new google.visualization.DataTable();
      data2.addColumn('string', 'mes');
      data2.addColumn('number', 'ventas <?php echo $fsc->simbolo_divisa();?>');
      data2.addColumn('number', 'compras <?php echo $fsc->simbolo_divisa();?>');
      <?php if( $fsc->prestashop ){ ?>

      data2.addColumn('number', 'PrestaShop <?php echo $fsc->simbolo_divisa();?>');
      data2.addRows([
      <?php $loop_var1=$fsc->stats_last_months(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

         ['<?php echo $value1['month'];?>', <?php echo $value1['total_cli'];?>, <?php echo $value1['total_pro'];?>, <?php echo $value1['total_ps'];?>],
      <?php } ?>

      ]);
      <?php }else{ ?>

      data2.addRows([
      <?php $loop_var1=$fsc->stats_last_months(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

         ['<?php echo $value1['month'];?>', <?php echo $value1['total_cli'];?>, <?php echo $value1['total_pro'];?>],
      <?php } ?>

      ]);
      <?php } ?>

      
      // Instantiate and draw our chart, passing in some options.
      var chart2 = new google.visualization.AreaChart(document.getElementById('chart_pedidos_month'));
      chart2.draw(data2);
      
      // Create the data table.
      var data3 = new google.visualization.DataTable();
      data3.addColumn('string', 'año');
      data3.addColumn('number', 'ventas <?php echo $fsc->simbolo_divisa();?>');
      data3.addColumn('number', 'compras <?php echo $fsc->simbolo_divisa();?>');
      <?php if( $fsc->prestashop ){ ?>

      data3.addColumn('number', 'PrestaShop <?php echo $fsc->simbolo_divisa();?>');
      data3.addRows([
      <?php $loop_var1=$fsc->stats_last_years(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

         ['<?php echo $value1['year'];?>', <?php echo $value1['total_cli'];?>, <?php echo $value1['total_pro'];?>, <?php echo $value1['total_ps'];?>],
      <?php } ?>

      ]);
      <?php }else{ ?>

      data3.addRows([
      <?php $loop_var1=$fsc->stats_last_years(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

         ['<?php echo $value1['year'];?>', <?php echo $value1['total_cli'];?>, <?php echo $value1['total_pro'];?>],
      <?php } ?>

      ]);
      <?php } ?>

      
      // Instantiate and draw our chart, passing in some options.
      var chart3 = new google.visualization.AreaChart(document.getElementById('chart_pedidos_year'));
      chart3.draw(data3);
   }
</script>

<div class="container-fluid" style="margin-top: 10px;">
   <div class="row">
      <div class="col-sm-12">
         <div class="panel panel-default">
            <div class="panel-heading">
               <h3 class="panel-title"><span class="text-capitalize"><?php  echo FS_PEDIDOS;?></span> de los últimos días</h3>
            </div>
            <div class="panel-body">
               <div id="chart_pedidos_day" style="width: 95%; margin-left: auto; margin-right: auto;"></div>
            </div>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-sm-12">
         <div class="panel panel-default">
            <div class="panel-heading">
               <h3 class="panel-title"><span class="text-capitalize"><?php  echo FS_PEDIDOS;?></span> de los últimos meses</h3>
            </div>
            <div class="panel-body">
               <div id="chart_pedidos_month" style="width: 95%; margin-left: auto; margin-right: auto; height: 300px;"></div>
            </div>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-sm-12">
         <div class="panel panel-default">
            <div class="panel-heading">
               <h3 class="panel-title"><span class="text-capitalize"><?php  echo FS_PEDIDOS;?></span> de los últimos años</h3>
            </div>
            <div class="panel-body">
               <div id="chart_pedidos_year" style="width: 95%; margin-left: auto; margin-right: auto; height: 300px;"></div>
            </div>
         </div>
      </div>
   </div>
</div>
<?php }elseif( $fsc->mostrar=='listado' ){ ?>

<form action="<?php echo $fsc->url();?>&mostrar=listado" method="post" class="form">
   <div class="container-fluid" style="margin-top: 10px;">
      <div class="row">
         <div class="col-sm-2">
            <div class="form-group">
               Desde:
               <input type="text" name="desde" value="<?php echo $fsc->desde;?>" class="form-control datepicker" autocomplete="off"/>
            </div>
         </div>
         <div class="col-sm-2">
            <div class="form-group">
               Hasta:
               <input type="text" name="hasta" value="<?php echo $fsc->hasta;?>" class="form-control datepicker" autocomplete="off"/>
            </div>
         </div>
         <div class="col-sm-2">
            <div class="form-group">
               Tipo:
               <select name="tipo" class="form-control" onchange="this.form.submit();">
                  <option value="ventas"<?php if( $fsc->tipo=='ventas' ){ ?> selected=""<?php } ?>>Ventas</option>
                  <option value="compras"<?php if( $fsc->tipo=='compras' ){ ?> selected=""<?php } ?>>Compras</option>
               </select>
            </div>
         </div>
         <div class="col-sm-6 text-right">
            <button class="btn btn-sm btn-primary" type="submit" onclick="this.disabled = true;this.form.submit();">
               <span class="glyphicon glyphicon-search"></span>
               <span class="hidden-xs"> &nbsp; Buscar</span>
            </button>
         </div>
      </div>
      <div class="row">
         <div class="col-sm-12">
            <h2 class="text-capitalize"><?php  echo FS_PEDIDOS;?></h2>
         </div>
      </div>
   </div>
</form>

<div class="table-responsive">
   <?php if( $fsc->tipo=='ventas' ){ ?>

   <table class="table table-hover">
      <thead>
         <tr>
            <th></th>
            <th class="text-left">Código + <?php  echo FS_NUMERO2;?></th>
            <th class="text-left">Cliente</th>
            <th class="text-left">Observaciones</th>
            <th class="text-right">Total</th>
            <th class="text-right">Fecha</th>
            <th class="text-right">Hora</th>
         </tr>
      </thead>
      <?php $loop_var1=$fsc->resultados; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

      <tr class="clickableRow<?php if( $value1->status==2 ){ ?> bg-danger<?php }elseif( $value1->total<=0 ){ ?> bg-warning<?php } ?>" href="<?php echo $value1->url();?>">
         <td class="text-center">
            <?php if( $value1->idalbaran ){ ?>

            <span class="glyphicon glyphicon-paperclip" title="El <?php  echo FS_PEDIDO;?> tiene vinculado un <?php  echo FS_ALBARAN;?>"></span>
            <?php } ?>

            <?php if( $value1->status==2 ){ ?>

            <span class="glyphicon glyphicon-remove" title="El <?php  echo FS_PEDIDO;?> ha sido rechazado"></span>
            <?php } ?>

         </td>
         <td><a href="<?php echo $value1->url();?>"><?php echo $value1->codigo;?></a> <?php echo $value1->numero2;?></td>
         <td><?php echo $value1->nombrecliente;?></td>
         <td><?php echo $value1->observaciones_resume();?></td>
         <td class="text-right"><?php echo $fsc->show_precio($value1->total, $value1->coddivisa);?></td>
         <td class="text-right"><?php echo $value1->fecha;?></td>
         <td class="text-right"><?php echo $value1->show_hora();?></td>
      </tr>
      <?php }else{ ?>

      <tr class="bg-warning">
         <td></td>
         <td colspan="6">Ningún <?php  echo FS_PEDIDO;?> encontrado.</td>
      </tr>
      <?php } ?>

   </table>
   <?php }else{ ?>

   <table class="table table-hover">
      <thead>
         <tr>
            <th></th>
            <th class="text-left">Código + Núm. Proveedor</th>
            <th class="text-left">Proveedor</th>
            <th class="text-left">Observaciones</th>
            <th class="text-right">Total</th>
            <th class="text-right">Fecha</th>
         </tr>
      </thead>
      <?php $loop_var1=$fsc->resultados; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

      <tr class="clickableRow<?php if( $value1->total<=0 ){ ?> bg-warning<?php } ?>" href="<?php echo $value1->url();?>">
         <td class="text-center">
            <?php if( $value1->idalbaran ){ ?>

            <span class="glyphicon glyphicon-paperclip" title="El <?php  echo FS_PEDIDO;?> tiene vinculado un <?php  echo FS_ALBARAN;?>"></span>
            <?php } ?>

         </td>
         <td><a href="<?php echo $value1->url();?>"><?php echo $value1->codigo;?></a> <?php echo $value1->numproveedor;?></td>
         <td><?php echo $value1->nombre;?></td>
         <td><?php echo $value1->observaciones_resume();?></td>
         <td class="text-right"><?php echo $fsc->show_precio($value1->total, $value1->coddivisa);?></td>
         <td class="text-right"><?php echo $value1->fecha;?></td>
      </tr>
      <?php }else{ ?>

      <tr class="bg-warning">
         <td></td>
         <td colspan="5">Ningún <?php  echo FS_PEDIDO;?> encontrado.</td>
      </tr>
      <?php } ?>

   </table>
   <?php } ?>

</div>
<?php } ?>


<?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("footer") . ( substr("footer",-1,1) != "/" ? "/" : "" ) . basename("footer") );?>
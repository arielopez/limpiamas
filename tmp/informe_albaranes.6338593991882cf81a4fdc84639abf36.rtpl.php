<?php if(!class_exists('raintpl')){exit;}?><?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("header") . ( substr("header",-1,1) != "/" ? "/" : "" ) . basename("header") );?>


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
      data.addRows([
      <?php $loop_var1=$fsc->stats_last_days(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

         ['<?php echo $value1['day'];?>', <?php echo $value1['total_cli'];?>, <?php echo $value1['total_pro'];?>],
      <?php } ?>

      ]);
      
      // Instantiate and draw our chart, passing in some options.
      var chart = new google.visualization.ColumnChart(document.getElementById('chart_facturas_day'));
      chart.draw(data);
      
      // Create the data table.
      var data2 = new google.visualization.DataTable();
      data2.addColumn('string', 'mes');
      data2.addColumn('number', 'ventas <?php echo $fsc->simbolo_divisa();?>');
      data2.addColumn('number', 'compras <?php echo $fsc->simbolo_divisa();?>');
      data2.addRows([
      <?php $loop_var1=$fsc->stats_last_months(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

         ['<?php echo $value1['month'];?>', <?php echo $value1['total_cli'];?>, <?php echo $value1['total_pro'];?>],
      <?php } ?>

      ]);
      
      // Instantiate and draw our chart, passing in some options.
      var chart2 = new google.visualization.AreaChart(document.getElementById('chart_facturas_month'));
      chart2.draw(data2);
      
      // Create the data table.
      var data3 = new google.visualization.DataTable();
      data3.addColumn('string', 'año');
      data3.addColumn('number', 'ventas <?php echo $fsc->simbolo_divisa();?>');
      data3.addColumn('number', 'compras <?php echo $fsc->simbolo_divisa();?>');
      data3.addRows([
      <?php $loop_var1=$fsc->stats_last_years(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

         ['<?php echo $value1['year'];?>', <?php echo $value1['total_cli'];?>, <?php echo $value1['total_pro'];?>],
      <?php } ?>

      ]);
      
      // Instantiate and draw our chart, passing in some options.
      var chart3 = new google.visualization.AreaChart(document.getElementById('chart_facturas_year'));
      chart3.draw(data3);
   }
</script>

<div class="container-fluid">
   <div class="row">
      <div class="col-sm-12">
         <div class="page-header">
            <h1>
               <span class="glyphicon glyphicon-stats" aria-hidden="true"></span>
               Estadísticas
               <a class="btn btn-xs btn-default" href="<?php echo $fsc->url();?>" title="Recargar la página">
                  <span class="glyphicon glyphicon-refresh"></span>
               </a>
            </h1>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-sm-4">
         <?php if( $fsc->stats['alb_pendientes']>0 ){ ?>

         <a href="index.php?page=ventas_albaranes&mostrar=pendientes" class="btn btn-sm btn-block btn-info">
            <?php echo $fsc->stats['alb_pendientes'];?> <?php  echo FS_ALBARANES;?> pendientes
            (<?php echo $fsc->show_precio($fsc->stats['alb_pendientes_total']);?>)
         </a>
         <?php }else{ ?>

         <a href="index.php?page=ventas_albaranes&mostrar=pendientes" class="btn btn-sm btn-block btn-default">
            0 <?php  echo FS_ALBARANES;?> pendientes
         </a>
         <?php } ?>

      </div>
      <div class="col-sm-4">
         <?php if( $fsc->stats['ped_pendientes']>0 ){ ?>

         <a href="index.php?page=ventas_pedidos&mostrar=pendientes" class="btn btn-sm btn-block btn-info">
            <?php echo $fsc->stats['ped_pendientes'];?> <?php  echo FS_PEDIDOS;?> pendientes
            (<?php echo $fsc->show_precio($fsc->stats['ped_pendientes_total']);?>)
         </a>
         <?php }else{ ?>

         <a href="index.php?page=ventas_pedidos&mostrar=pendientes" class="btn btn-sm btn-block btn-default">
            0 <?php  echo FS_PEDIDOS;?> pendientes
         </a>
         <?php } ?>

      </div>
      <div class="col-sm-4">
         <?php if( $fsc->stats['pre_pendientes']>0 ){ ?>

         <a href="index.php?page=ventas_presupuestos&mostrar=pendientes" class="btn btn-sm btn-block btn-info">
            <?php echo $fsc->stats['pre_pendientes'];?> <?php  echo FS_PRESUPUESTOS;?> pendientes
            (<?php echo $fsc->show_precio($fsc->stats['pre_pendientes_total']);?>)
         </a>
         <?php }else{ ?>

         <a href="index.php?page=ventas_presupuestos&mostrar=pendientes" class="btn btn-sm btn-block btn-default">
            0 <?php  echo FS_PRESUPUESTOS;?> pendientes
         </a>
         <?php } ?>

      </div>
   </div>
   <div class="row">
      <div class="col-sm-12">
         <br/>
         <div class="panel panel-default">
            <div class="panel-heading">
               <h3 class="panel-title"><span class="text-capitalize"><?php  echo FS_ALBARANES;?></span> de los últimos días</h3>
            </div>
            <div class="panel-body">
               <div id="chart_facturas_day" style="width: 95%; margin-left: auto; margin-right: auto;"></div>
            </div>
            <div class="panel-footer">
               <p class="help-block">
                  La media de ventas es de <b><?php echo $fsc->show_precio($fsc->stats['media_ventas_dia']);?></b>/día,
                  la media de compras es de <b><?php echo $fsc->show_precio($fsc->stats['media_compras_dia']);?></b>/día.
               </p>
            </div>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-sm-12">
         <div class="panel panel-default">
            <div class="panel-heading">
               <h3 class="panel-title"><span class="text-capitalize"><?php  echo FS_ALBARANES;?></span> de los últimos meses</h3>
            </div>
            <div class="panel-body">
               <div id="chart_facturas_month" style="width: 95%; margin-left: auto; margin-right: auto; height: 300px;"></div>
            </div>
            <div class="panel-footer">
               <p class="help-block">
                  La media de ventas es de <b><?php echo $fsc->show_precio($fsc->stats['media_ventas_mes']);?></b>/mes,
                  la media de compras es de <b><?php echo $fsc->show_precio($fsc->stats['media_compras_mes']);?></b>/mes.
               </p>
            </div>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-sm-12">
         <div class="panel panel-default">
            <div class="panel-heading">
               <h3 class="panel-title"><span class="text-capitalize"><?php  echo FS_ALBARANES;?></span> de los últimos años</h3>
            </div>
            <div class="panel-body">
               <div id="chart_facturas_year" style="width: 95%; margin-left: auto; margin-right: auto; height: 300px;"></div>
            </div>
         </div>
      </div>
   </div>
</div>

<?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("footer") . ( substr("footer",-1,1) != "/" ? "/" : "" ) . basename("footer") );?>
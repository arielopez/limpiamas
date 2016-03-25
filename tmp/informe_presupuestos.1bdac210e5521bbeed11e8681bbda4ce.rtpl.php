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
      data.addColumn('number', '<?php  echo FS_PRESUPUESTOS;?> <?php echo $fsc->simbolo_divisa();?>');
      data.addColumn('number', '<?php  echo FS_PEDIDOS;?> <?php echo $fsc->simbolo_divisa();?>');
      data.addRows([
      <?php $loop_var1=$fsc->stats_last_days(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

         ['<?php echo $value1['day'];?>', <?php echo $value1['total_pre'];?>, <?php echo $value1['total_ped'];?>],
      <?php } ?>

      ]);
      
      // Instantiate and draw our chart, passing in some options.
      var chart = new google.visualization.ColumnChart(document.getElementById('chart_presupuestos_day'));
      chart.draw(data);
      
      // Create the data table.
      var data2 = new google.visualization.DataTable();
      data2.addColumn('string', 'mes');
      data2.addColumn('number', '<?php  echo FS_PRESUPUESTOS;?> <?php echo $fsc->simbolo_divisa();?>');
      data2.addColumn('number', '<?php  echo FS_PEDIDOS;?> <?php echo $fsc->simbolo_divisa();?>');
      data2.addRows([
      <?php $loop_var1=$fsc->stats_last_months(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

         ['<?php echo $value1['month'];?>', <?php echo $value1['total_pre'];?>, <?php echo $value1['total_ped'];?>],
      <?php } ?>

      ]);
      
      // Instantiate and draw our chart, passing in some options.
      var chart2 = new google.visualization.AreaChart(document.getElementById('chart_presupuestos_month'));
      chart2.draw(data2);
      
      // Create the data table.
      var data3 = new google.visualization.DataTable();
      data3.addColumn('string', 'año');
      data3.addColumn('number', '<?php  echo FS_PRESUPUESTOS;?> <?php echo $fsc->simbolo_divisa();?>');
      data3.addColumn('number', '<?php  echo FS_PEDIDOS;?> <?php echo $fsc->simbolo_divisa();?>');
      data3.addRows([
      <?php $loop_var1=$fsc->stats_last_years(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

         ['<?php echo $value1['year'];?>', <?php echo $value1['total_pre'];?>, <?php echo $value1['total_ped'];?>],
      <?php } ?>

      ]);
      
      // Instantiate and draw our chart, passing in some options.
      var chart3 = new google.visualization.AreaChart(document.getElementById('chart_presupuestos_year'));
      chart3.draw(data3);
   }
</script>

<div class="container-fluid" style="margin-top: 10px;">
   <div class="row">
      <div class="col-sm-12">
         <div class="panel panel-default">
            <div class="panel-heading">
               <h3 class="panel-title"><span class="text-capitalize"><?php  echo FS_PRESUPUESTOS;?></span> de los últimos días</h3>
            </div>
            <div class="panel-body">
               <div id="chart_presupuestos_day" style="width: 95%; margin-left: auto; margin-right: auto;"></div>
            </div>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-sm-12">
         <div class="panel panel-default">
            <div class="panel-heading">
               <h3 class="panel-title"><span class="text-capitalize"><?php  echo FS_PRESUPUESTOS;?></span> de los últimos meses</h3>
            </div>
            <div class="panel-body">
               <div id="chart_presupuestos_month" style="width: 95%; margin-left: auto; margin-right: auto; height: 300px;"></div>
            </div>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-sm-12">
         <div class="panel panel-default">
            <div class="panel-heading">
               <h3 class="panel-title"><span class="text-capitalize"><?php  echo FS_PRESUPUESTOS;?></span> de los últimos años</h3>
            </div>
            <div class="panel-body">
               <div id="chart_presupuestos_year" style="width: 95%; margin-left: auto; margin-right: auto; height: 300px;"></div>
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
         <div class="col-sm-8 text-right">
            <button class="btn btn-sm btn-primary" type="submit" onclick="this.disabled = true;this.form.submit();">
               <span class="glyphicon glyphicon-search"></span>
               <span class="hidden-xs"> &nbsp; Buscar</span>
            </button>
         </div>
      </div>
      <div class="row">
         <div class="col-sm-12">
            <h2 class="text-capitalize"><?php  echo FS_PRESUPUESTOS;?></h2>
         </div>
      </div>
   </div>
</form>

<div class="table-responsive">
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
            <th class="text-right">Fecha validez</th>
         </tr>
      </thead>
      <?php $loop_var1=$fsc->resultados; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

      <tr class="clickableRow<?php if( $value1->total<=0 ){ ?> bg-warning<?php }elseif( $value1->status==2 ){ ?> bg-danger<?php } ?>" href="<?php echo $value1->url();?>">
         <td class="text-center">
            <?php if( $value1->idpedido ){ ?>

            <span class="glyphicon glyphicon-paperclip" title="El <?php  echo FS_PRESUPUESTO;?> tiene vinculado un <?php  echo FS_PEDIDO;?>"></span>
            <?php } ?>

            <?php if( $value1->status==2 ){ ?>

            <span class="glyphicon glyphicon-remove" title="El <?php  echo FS_PRESUPUESTO;?> ha sido rechazado"></span>
            <?php } ?>

         </td>
         <td><a href="<?php echo $value1->url();?>"><?php echo $value1->codigo;?></a> <?php echo $value1->numero2;?></td>
         <td><?php echo $value1->nombrecliente;?></td>
         <td><?php echo $value1->observaciones_resume();?></td>
         <td class="text-right"><?php echo $fsc->show_precio($value1->total, $value1->coddivisa);?></td>
         <td class="text-right"><?php echo $value1->fecha;?></td>
         <td class="text-right"><?php echo $value1->show_hora();?></td>
         <td class="text-right">
            <?php if( $value1->status==0 ){ ?>

            <?php echo $value1->finoferta;?>

            <?php }else{ ?>

            -
            <?php } ?>

         </td>
      </tr>
      <?php }else{ ?>

      <tr class="bg-warning">
         <td></td>
         <td colspan="7">Ningún <?php  echo FS_PRESUPUESTO;?> encontrado.</td>
      </tr>
      <?php } ?>

   </table>
</div>
<?php } ?>


<?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("footer") . ( substr("footer",-1,1) != "/" ? "/" : "" ) . basename("footer") );?>
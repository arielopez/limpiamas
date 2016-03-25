<?php if(!class_exists('raintpl')){exit;}?><?php if( !$fsc->informe['started'] ){ ?>

   <?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("header") . ( substr("header",-1,1) != "/" ? "/" : "" ) . basename("header") );?>

   
   <br/>
   <br/>
   
   <div class="container">
      <div class="row">
         <div class="col-sm-6">
            <form action="<?php echo $fsc->url();?>" method="post" class="form">
               <div class="panel panel-info">
                  <div class="panel-heading">
                     <h3 class="panel-title">Opciones del informe de errores</h3>
                  </div>
                  <div class="panel-body">
                     <div class="form-group">
                        Comprobar
                        <select class="form-control" name="modelo">
                           <option value="todo">Todo</option>
                           <option value="todo">-------</option>
                           <option value="tablas" selected="">Tablas</option>
                           <option value="asiento">Asientos</option>
                           <option value="factura cliente">Facturas de cliente</option>
                           <option value="factura proveedor">Facturas de proveedor</option>
                           <option value="albaran cliente"><?php echo ucfirst(FS_ALBARANES); ?> de cliente</option>
                           <option value="albaran proveedor"><?php echo ucfirst(FS_ALBARANES); ?> de proveedor</option>
                           <option value="dirclientes">Direcciones de clientes</option>
                        </select>
                     </div>
                     <div class="form-group">
                        Hasta el ejercicio
                        <select class="form-control" name="ejercicio">
                           <?php $loop_var1=$fsc->ejercicio->all(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

                           <option value="<?php echo $value1->codejercicio;?>"><?php echo $value1->nombre;?></option>
                           <?php } ?>

                           <option value="">---</option>
                           <option value="">Comprobar todos</option>
                        </select>
                     </div>
                     <div class="checkbox">
                        <label>
                           <input type="checkbox" name="duplicados" value="TRUE"/>
                           Detectar duplicados
                        </label>
                     </div>
                  </div>
                  <div class="panel-footer">
                     <button class="btn btn-sm btn-primary" type="submit" onclick="this.form.submit();">
                        <span class="glyphicon glyphicon-play"></span> &nbsp; Iniciar comprobación
                     </button>
                  </div>
               </div>
            </form>
         </div>
         <div class="col-sm-6">
            <div class="thumbnail">
               <img src="view/img/help-menu.png" alt="informar..."/>
               <div class="caption">
                  <h3>¿No se soluciona el error?</h3>
                  <p>
                     Si los errores persisten, es mejor que nos informes.
                     Usa el menú de ayuda, pulsa informar... y después
                     enviar.
                  </p>
               </div>
            </div>
         </div>
      </div>
   </div>
   
   
   <?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("footer") . ( substr("footer",-1,1) != "/" ? "/" : "" ) . basename("footer") );?>

<?php }elseif( !$fsc->ajax ){ ?>

   <?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("header") . ( substr("header",-1,1) != "/" ? "/" : "" ) . basename("header") );?>

   
   <script type="text/javascript">
      var show_page = "<?php echo $fsc->informe['show_page'];?>";
      var timeout = false;
      function load_errors(page)
      {
         show_page = page;
         $.ajax({
            type: 'POST',
            url: '<?php echo $fsc->url();?>',
            dataType: 'html',
            data: 'ajax=TRUE&show_page='+show_page,
            success: function(datos) {
               clearTimeout(timeout);
               var re = /<!--(.*?)-->/g;
               var m = re.exec(datos);
               if(m[1] == 'FIN_PROCESO')
               {
                  $("#informe_errores").html(datos);
               }
               else if(m[1] == show_page)
               {
                  $("#informe_errores").html(datos);
                  timeout = setTimeout("load_errors(show_page);", 500);
               }
            }
         });
      }
      $(document).ready(function() {
         timeout = setTimeout("load_errors(show_page);", 500);
      });
   </script>
   
   <div id="informe_errores">
      <div class="alert alert-info" role="alert">Cargando...</div>
   </div>
   
   <?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("footer") . ( substr("footer",-1,1) != "/" ? "/" : "" ) . basename("footer") );?>

<?php }else{ ?>

   <?php if( $fsc->informe['model']=='fin' ){ ?>

      <!--FIN_PROCESO-->
      <div class="alert alert-info alert-dismissible" role="alert">
         <a href="<?php echo $fsc->url();?>&cancelar=TRUE" class="close"><span aria-hidden="true">&times;</span></a>
         Comprobación finalizada.
      </div>
   <?php }else{ ?>

      <!--<?php echo $fsc->informe['show_page'];?>-->
      <div class="alert alert-info" role="alert">
         <a href="<?php echo $fsc->url();?>&cancelar=TRUE" class="close"><span aria-hidden="true">&times;</span></a>
         Comprobado hasta <?php echo $fsc->informe['model'];?> <?php echo $fsc->informe['offset'];?>...
         <?php echo $fsc->duration();?>

      </div>
   <?php } ?>

   
   <?php if( $fsc->get_errors() ){ ?>

   <div class="alert alert-danger hidden-print">
      <ul><?php $loop_var1=$fsc->get_errors(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?><li><?php echo $value1;?></li><?php } ?></ul>
   </div>
   <?php } ?>

   <?php if( $fsc->get_messages() ){ ?>

   <div class="alert alert-success hidden-print">
      <ul><?php $loop_var1=$fsc->get_messages(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?><li><?php echo $value1;?></li><?php } ?></ul>
   </div>
   <?php } ?>

   <?php if( $fsc->get_advices() ){ ?>

   <div class="alert alert-info hidden-print">
      <ul><?php $loop_var1=$fsc->get_advices(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?><li><?php echo $value1;?></li><?php } ?></ul>
   </div>
   <?php } ?>

   
   <div class="table-responsive">
      <table class="table table-hover">
         <thead>
            <tr>
               <th class="text-left">Error</th>
               <th class="text-left"></th>
               <th class="text-left">Modelo</th>
               <th class="text-left">Ejercicio</th>
               <th class="text-left">Identificador</th>
               <th class="text-right">Fecha</th>
            </tr>
         </thead>
         <?php $loop_var1=$fsc->errores; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

         <tr>
            <td><?php echo $value1['error'];?></td>
            <td><?php if( $value1['fix'] ){ ?>Corregido<?php }else{ ?>-<?php } ?></td>
            <td><?php echo $value1['model'];?></td>
            <td><?php echo $value1['ejercicio'];?></td>
            <td><a href="<?php echo $value1['url'];?>"><?php echo $value1['id'];?></a></td>
            <td class="text-right"><?php echo $value1['fecha'];?></td>
         </tr>
         <?php }else{ ?>

         <tr class="warning">
            <td colspan="6">Nada que mostrar.</td>
         </tr>
         <?php } ?>

      </table>
   </div>
   
   <div style="text-align: center;">
      
   </div>
   
   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-9">
            <div class="btn-group">
               <?php $loop_var1=$fsc->all_pages(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

               <a href="<?php echo $fsc->url();?>&show_page=<?php echo $value1['page'];?>" class="btn btn-sm btn-default<?php if( $value1['selected'] ){ ?> active<?php } ?>">
                  <?php echo $value1['num'];?>

               </a>
               <?php } ?>

            </div>
         </div>
         <div class="col-sm-3 text-right">
            <?php if( $fsc->informe['model']=='fin' ){ ?>

            <a href="<?php echo $fsc->url();?>&cancelar=TRUE" class="btn btn-sm btn-info">
               <span class="glyphicon glyphicon-ok"></span> &nbsp; Finalizar
            </a>
            <?php } ?>

         </div>
      </div>
   </div>
<?php } ?>
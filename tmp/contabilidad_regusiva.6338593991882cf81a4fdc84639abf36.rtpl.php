<?php if(!class_exists('raintpl')){exit;}?><?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("header") . ( substr("header",-1,1) != "/" ? "/" : "" ) . basename("header") );?>


<script type="text/javascript">
   function full_regiva(id)
   {
      $.ajax({
         type: 'POST',
         url: '<?php echo $fsc->url();?>',
         dataType: 'html',
         data: 'idregiva='+id,
         success: function(datos) {
            $("#modal_full_regiva2").html(datos);
            $("#modal_full_regiva").modal('show');
         }
      });
   }
   function completar_regiva()
   {
      document.f_nueva_regiva.proceso.value = 'comprobar';
      $.ajax({
         type: 'POST',
         url: '<?php echo $fsc->url();?>',
         dataType: 'html',
         data: $("form[name=f_nueva_regiva]").serialize(),
         success: function(datos) {
            $("#lineas_regiva").html(datos);
         }
      });
   }
   function guardar_regiva()
   {
      document.f_nueva_regiva.proceso.value = 'guardar';
      document.f_nueva_regiva.submit();
   }
   $(document).ready(function() {
      $("#b_nueva_regiva").click(function(event) {
         event.preventDefault();
         $("#lineas_regiva").html('');
         $("#modal_nueva_regiva").modal('show');
      });
   });
</script>

<div class="container">
   <div class="row">
      <div class="col-sm-12">
         <div class="page-header">
            <h1>
               Regularización de <?php  echo FS_IVA;?>

               <a class="btn btn-xs btn-default" href="<?php echo $fsc->url();?>" title="Recargar la página">
                  <span class="glyphicon glyphicon-refresh"></span>
               </a>
               <div class="btn-group">
                  <a id="b_nueva_regiva" class="btn btn-xs btn-success" href="#">
                     <span class="glyphicon glyphicon-plus"></span> &nbsp; Nueva
                  </a>
                  <?php $loop_var1=$fsc->extensions; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

                     <?php if( $value1->type=='button' ){ ?>

                     <a href="index.php?page=<?php echo $value1->from;?><?php echo $value1->params;?>" class="btn btn-xs btn-default"><?php echo $value1->text;?></a>
                     <?php } ?>

                  <?php } ?>

               </div>
            </h1>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-sm-12">
         <div class="table-responsive">
            <table class="table table-hover">
               <thead>
                  <tr>
                     <th class="text-left">Periodo@Ejercicio</th>
                     <th class="text-left">Fecha del asiento</th>
                     <th class="text-left">Fecha de inicio</th>
                     <th class="text-right">Fecha de fin</th>
                  </tr>
               </thead>
               <?php $loop_var1=$fsc->regiva->all(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

               <tr>
                  <td>
                     <a href="#" onclick="full_regiva('<?php echo $value1->idregiva;?>')">
                        <?php echo $value1->periodo;?>@<?php echo $value1->codejercicio;?>

                     </a>
                  </td>
                  <td><?php echo $value1->fechaasiento;?></td>
                  <td><?php echo $value1->fechainicio;?></td>
                  <td class="text-right"><?php echo $value1->fechafin;?></td>
               </tr>
               <?php }else{ ?>

               <tr class="warning">
                  <td colspan="4">Sin resultados. Pulsa el botón <b>Nueva</b> para hacer una regularización de <?php  echo FS_IVA;?>.</td>
               </tr>
               <?php } ?>

            </table>
         </div>
      </div>
   </div>
</div>

<form class="form-horizontal" role="form" name="f_nueva_regiva" action="<?php echo $fsc->url();?>" method="post">
   <input type="hidden" name="proceso" value=""/>
   <div class="modal fade" id="modal_nueva_regiva">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
               <h4 class="modal-title">Nueva regularización de <?php  echo FS_IVA;?></h4>
            </div>
            <div class="modal-body">
               <div class="form-group">
                  <label for="periodo" class="col-lg-2 col-md-2 col-sm-2 control-label">Período</label>
                  <div class="col-lg-10 col-md-10 col-sm-10">
                      <select name="periodo" class="form-control">
                         <?php if( $fsc->periodo=='T1' ){ ?><option selected="">T1</option><?php }else{ ?><option>T1</option><?php } ?>

                         <?php if( $fsc->periodo=='T2' ){ ?><option selected="">T2</option><?php }else{ ?><option>T2</option><?php } ?>

                         <?php if( $fsc->periodo=='T3' ){ ?><option selected="">T3</option><?php }else{ ?><option>T3</option><?php } ?>

                         <?php if( $fsc->periodo=='T4' ){ ?><option selected="">T4</option><?php }else{ ?><option>T4</option><?php } ?>

                      </select>
                   </div>
               </div>
               <div class="form-group">
                  <label for="desde" class="col-lg-2 col-md-2 col-sm-2 control-label">Desde</label>
                  <div class="col-lg-10 col-md-10 col-sm-10">
                     <input class="form-control datepicker" type="text" name="desde" value="<?php echo $fsc->fecha_desde;?>"/>
                  </div>
               </div>
               <div class="form-group">
                  <label for="hasta" class="col-lg-2 col-md-2 col-sm-2 control-label">Hasta</label>
                  <div class="col-lg-10 col-md-10 col-sm-10">
                     <input class="form-control datepicker" type="text" name="hasta" value="<?php echo $fsc->fecha_hasta;?>"/>
                  </div>
               </div>
            </div>
            <div class="modal-footer">
               <button class="btn btn-sm btn-default" type="button" onclick="completar_regiva()">
                   <span class="glyphicon glyphicon-play"></span> &nbsp; Completar
                </button>
            </div>
            <div id="lineas_regiva"></div>
         </div>
      </div>
   </div>
</form>

<div class="modal fade" id="modal_full_regiva">
   <div class="modal-dialog">
      <div class="modal-content" id="modal_full_regiva2"></div>
   </div>
</div>

<?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("footer") . ( substr("footer",-1,1) != "/" ? "/" : "" ) . basename("footer") );?>
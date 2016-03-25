<?php if(!class_exists('raintpl')){exit;}?><?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("header") . ( substr("header",-1,1) != "/" ? "/" : "" ) . basename("header") );?>


<script type="text/javascript">
   function buscar_lineas()
   {
      if(document.f_buscar_lineas.buscar_lineas.value == '')
      {
         $('#search_results').html('');
      }
      else
      {
         $.ajax({
            type: 'POST',
            url: '<?php echo $fsc->url();?>',
            dataType: 'html',
            data: $('form[name=f_buscar_lineas]').serialize(),
            success: function(datos) {
               var re = /<!--(.*?)-->/g;
               var m = re.exec( datos );
               if( m[1] == document.f_buscar_lineas.buscar_lineas.value )
               {
                  $('#search_results').html(datos);
               }
            }
         });
      }
   }
   $(document).ready(function() {
      document.f_custom_search.query.focus();
      $('#b_buscar_lineas').click(function(event) {
         event.preventDefault();
         $('#modal_buscar_lineas').modal('show');
         document.f_buscar_lineas.buscar_lineas.focus();
      });
      $('#f_buscar_lineas').keyup(function() {
         buscar_lineas();
      });
      $('#f_buscar_lineas').submit(function(event) {
         event.preventDefault();
         buscar_lineas();
      });
   });
</script>

<div class="container-fluid" style="margin-top: 10px; margin-bottom: 10px;">
   <div class="row">
      <div class="col-md-8 col-sm-7 col-xs-8">
         <div class="btn-group hidden-xs">
            <a class="btn btn-sm btn-default" href="<?php echo $fsc->url();?>" title="Recargar la página">
               <span class="glyphicon glyphicon-refresh"></span>
            </a>
            <?php if( $fsc->page->is_default() ){ ?>

            <a class="btn btn-sm btn-default active" href="<?php echo $fsc->url();?>&amp;default_page=FALSE" title="desmarcar como página de inicio">
               <span class="glyphicon glyphicon-home"></span>
            </a>
            <?php }else{ ?>

            <a class="btn btn-sm btn-default" href="<?php echo $fsc->url();?>&amp;default_page=TRUE" title="marcar como página de inicio">
               <span class="glyphicon glyphicon-home"></span>
            </a>
            <?php } ?>

         </div>
         <div class="btn-group">
            <a class="btn btn-sm btn-success" href="index.php?page=nueva_compra&tipo=pedido">
               <span class="glyphicon glyphicon-plus"></span>
               <span class="hidden-xs">&nbsp; Nuevo</span>
            </a>
            <?php $loop_var1=$fsc->extensions; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

               <?php if( $value1->type=='button' ){ ?>

               <a href="index.php?page=<?php echo $value1->from;?><?php echo $value1->params;?>" class="btn btn-sm btn-default"><?php echo $value1->text;?></a>
               <?php } ?>

            <?php } ?>

         </div>
      </div>
      <div class="col-md-2 col-sm-2 col-xs-4 text-right">
         <div class="btn-group">
            <a id="b_buscar_lineas" class="btn btn-sm btn-info" title="Buscar en líneas">
               <span class="glyphicon glyphicon-search"></span> &nbsp; Líneas
            </a>
         </div>
      </div>
      <div class="col-md-2 col-sm-3 col-xs-12">
         <div class="visible-xs"><br/></div>
         <form name="f_custom_search" action="<?php echo $fsc->url();?>" method="post" class="form">
            <div class="input-group">
               <input class="form-control" type="text" name="query" value="<?php echo $fsc->query;?>" autocomplete="off" placeholder="Buscar">
               <span class="input-group-btn">
                  <button class="btn btn-primary" type="submit">
                     <span class="glyphicon glyphicon-search"></span>
                  </button>
               </span>
            </div>
         </form>
      </div>
   </div>
</div>

<ul class="nav nav-tabs" role="tablist">
   <li<?php if( !isset($_GET['pendientes']) ){ ?> class="active"<?php } ?>>
      <a href="<?php echo $fsc->url();?>">
         <?php if( $fsc->query=='' ){ ?>

         Todos los <?php  echo FS_PEDIDOS;?>

         <?php }else{ ?>

         <span class="glyphicon glyphicon-search"></span>
         <span class="hidden-xs">&nbsp; Resultados de "<?php echo $fsc->query;?>"</span>
         <?php } ?>

      </a>
   </li>
   <li<?php if( isset($_GET['pendientes']) ){ ?> class="active"<?php } ?>>
      <a href="<?php echo $fsc->url();?>&pendientes=TRUE" title="Pendientes">
         <span class="glyphicon glyphicon-time"></span>
         <span class="hidden-xs"> &nbsp; Pendientes</span>
         <span class="hidden-xs badge"><?php echo $fsc->total_pendientes();?></span>
      </a>
   </li>
</ul>

<div class="table-responsive word-upper">
   <table class="table table-hover">
      <thead>
         <tr>
            <th></th>
            <th class="text-left col-lg-1">Fecha</th>
            <th class="text-left col-lg-1">Código </th>
            <th class="text-left col-lg-2"> Nro. doc. Proveedor</th>
            <th class="text-left col-lg-2">Proveedor</th>
            <th class="text-left col-lg-1">Total</th>
            <th class="text-left">Observaciones</th>
         </tr>
      </thead>
      <?php $loop_var1=$fsc->resultados; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

      <tr class="clickableRow<?php if( $value1->idalbaran ){ ?> success<?php }elseif( $value1->total<=0 ){ ?> bg-warning<?php } ?>" href="<?php echo $value1->url();?>">
         <td class="text-center">
            <?php if( $value1->idalbaran ){ ?>

            <span class="glyphicon glyphicon-paperclip" title="El <?php  echo FS_PEDIDO;?> tiene vinculado un <?php  echo FS_ALBARAN;?>"></span>
            <?php } ?>

         </td>
         <td class="text-left">
            <span title="Hora: <?php echo $value1->hora;?>">
               <?php if( $value1->fecha==$fsc->today() ){ ?><b><?php echo $value1->fecha;?></b><?php }else{ ?><?php echo $value1->fecha;?><?php } ?>

            </span>
         </td>
         <td><a href="<?php echo $value1->url();?>"><?php echo $value1->codigo;?></a> </td>
         <td> <?php echo $value1->numproveedor;?></td>
         <td>
            <?php echo $value1->nombre;?>

            <a href="<?php echo $fsc->url();?>&codproveedor=<?php echo $value1->codproveedor;?>" class="cancel_clickable" title="Ver más <?php  echo FS_PEDIDOS;?> de <?php echo $value1->nombre;?>">[+]</a>
         </td>
         <td class="text-left"><?php echo $fsc->show_precio($value1->total, $value1->coddivisa);?></td>
         <td><?php echo $value1->observaciones_resume();?></td>
      </tr>
      <?php }else{ ?>

      <tr class="bg-warning">
         <td></td>
         <td colspan="5">Ningún <?php  echo FS_PEDIDO;?> encontrado. Pulsa el botón <b>Nuevo</b> para crear uno.</td>
      </tr>
      <?php } ?>

   </table>
</div>

<ul class="pager">
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

<form class="form" role="form" id="f_buscar_lineas" name="f_buscar_lineas" action="<?php echo $fsc->url();?>" method="post">
   <div class="modal" id="modal_buscar_lineas">
      <div class="modal-dialog" style="width: 99%; max-width: 950px;">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
               <h4 class="modal-title">Buscar en las líneas</h4>
            </div>
            <div class="modal-body">
               <div class="input-group">
                  <input class="form-control" type="text" name="buscar_lineas" placeholder="Referencia" autocomplete="off"/>
                  <span class="input-group-btn">
                     <button class="btn btn-primary" type="submit">
                        <span class="glyphicon glyphicon-search"></span>
                     </button>
                  </span>
               </div>
            </div>
            <div id="search_results" class="table-responsive"></div>
         </div>
      </div>
   </div>
</form>

<?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("footer") . ( substr("footer",-1,1) != "/" ? "/" : "" ) . basename("footer") );?>
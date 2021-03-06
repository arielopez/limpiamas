<?php if(!class_exists('raintpl')){exit;}?><?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("header") . ( substr("header",-1,1) != "/" ? "/" : "" ) . basename("header") );?>


<script type="text/javascript">
   $(document).ready(function() {
      document.f_custom_search.query.focus();
   });
</script>

<div class="container-fluid" style="margin-top: 10px;">
   <div class="row">
      <div class="col-sm-6 col-xs-6">
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
            <a class="btn btn-sm btn-success" href="index.php?page=contabilidad_nuevo_asiento">
               <span class="glyphicon glyphicon-plus"></span>
               <span class="hidden-xs">&nbsp; Nuevo</span>
            </a>
            <a class="btn btn-sm btn-default" href="<?php echo $fsc->url();?>&renumerar=TRUE">
               <span class="glyphicon glyphicon-sort-by-attributes"></span> &nbsp; Renumerar
            </a>
            <?php $loop_var1=$fsc->extensions; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

               <?php if( $value1->type=='button' ){ ?>

               <a href="index.php?page=<?php echo $value1->from;?><?php echo $value1->params;?>" class="btn btn-sm btn-default"><?php echo $value1->text;?></a>
               <?php } ?>

            <?php } ?>

         </div>
      </div>
      <div class="col-sm-4 col-xs-6 text-right">
         <h2 style="margin-top: 0px;">Asientos</h2>
      </div>
      <div class="col-sm-2 col-xs-12">
         <form name="f_custom_search" action="<?php echo $fsc->url();?>" method="post" class="form">
            <div class="input-group">
               <input class="form-control" type="text" name="query" value="<?php echo $fsc->query;?>" autocomplete="off" placeholder="Buscar">
               <span class="input-group-btn">
                  <button class="btn btn-primary hidden-sm" type="submit">
                     <span class="glyphicon glyphicon-search"></span>
                  </button>
               </span>
            </div>
         </form>
         <div class="visible-xs"><br/></div>
      </div>
   </div>
</div>

<?php if( $fsc->query!='' ){ ?>

<ul class="nav nav-tabs" role="tablist">
   <li class="active">
      <a href="#">
         <span class="glyphicon glyphicon-search"></span>
         <span class="hidden-xs">&nbsp; Resultados de "<?php echo $fsc->query;?>"</span>
      </a>
   </li>
</ul>
<?php }else{ ?>

<ul class="nav nav-tabs" role="tablist">
   <li<?php if( !isset($_GET['descuadrados']) ){ ?> class="active"<?php } ?>>
      <a href="<?php echo $fsc->url();?>">
         Todos <span class="badge"><?php echo $fsc->total_asientos();?></span>
      </a>
   </li>
   <li<?php if( isset($_GET['descuadrados']) ){ ?> class="active"<?php } ?>>
      <a href="<?php echo $fsc->url();?>&descuadrados=TRUE">
         <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
         <span class="hidden-xs">&nbsp; Descuadrados</span>
      </a>
   </li>
</ul>
<?php } ?>


<div class="table-responsive">
   <table class="table table-hover">
      <thead>
         <tr>
            <th></th>
            <th class="text-left">Ejercicio + Número</th>
            <th class="text-left">Concepto</th>
            <th class="text-right">Importe</th>
            <th class="text-right">Fecha</th>
         </tr>
      </thead>
      <?php $loop_var1=$fsc->resultados; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

      <tr class="clickableRow<?php if( $value1->importe<=0 ){ ?> bg-warning<?php } ?>" href="<?php echo $value1->url();?>">
         <td class="text-center">
            <?php if( $value1->editable ){ ?>

            <span class="glyphicon glyphicon-pencil" title="editable"></span>
            <?php } ?>

         </td>
         <td><?php echo $value1->codejercicio;?> <a href="<?php echo $value1->url();?>"><?php echo $value1->numero;?></a></td>
         <td><?php echo $value1->concepto;?></td>
         <td class="text-right"><?php echo $fsc->show_precio($value1->importe);?></td>
         <td class="text-right"><?php echo $value1->fecha;?></td>
      </tr>
      <?php }else{ ?>

      <tr class="warning">
         <td></td>
         <td colspan="5">
            Ningún asiento encontrado.
            <?php if( !isset($_GET['descuadrados']) ){ ?> Pulsa <b>Nuevo</b> para crear uno.<?php } ?>

         </td>
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

<?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("footer") . ( substr("footer",-1,1) != "/" ? "/" : "" ) . basename("footer") );?>
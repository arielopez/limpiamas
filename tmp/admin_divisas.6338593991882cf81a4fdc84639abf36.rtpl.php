<?php if(!class_exists('raintpl')){exit;}?><?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("header") . ( substr("header",-1,1) != "/" ? "/" : "" ) . basename("header") );?>


<script type="text/javascript">
   function eliminar_divisa(cod)
   {
      if( confirm("¿Realmente desea eliminar la divisa "+cod+"?") )
         window.location.href = '<?php echo $fsc->url();?>&delete='+cod;
   }
</script>

<div class="container-fluid" style="margin-top: 10px;">
   <div class="row">
      <div class="col-xs-6">
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
            <?php $loop_var1=$fsc->extensions; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

               <?php if( $value1->type=='button' ){ ?>

               <a href="index.php?page=<?php echo $value1->from;?><?php echo $value1->params;?>" class="btn btn-sm btn-default"><?php echo $value1->text;?></a>
               <?php } ?>

            <?php } ?>

         </div>
      </div>
      <div class="col-xs-6 text-right">
         <h2 style="margin-top: 0px;">Divisas</h2>
      </div>
   </div>
</div>

<div class="table-responsive">
   <table class="table table-hover">
      <thead>
         <tr>
            <th class="text-left" width="120">Código</th>
            <th class="text-left" width="120">Símbolo</th>
            <th class="text-left">Descripción</th>
            <th class="text-left" width="120">Código ISO</th>
            <th class="text-left">Tasa de conversión a Grs. (ventas)</th>
            <th class="text-left">Tasa de conversión a Grs. (compras)</th>
            <th class="text-right" width="120">Acciones</th>
         </tr>
      </thead>
      <?php $loop_var1=$fsc->divisa->all(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

      <form action="<?php echo $fsc->url();?>" method="post" class="form">
         <tr>
            <td>
               <input type="hidden" name="coddivisa" value="<?php echo $value1->coddivisa;?>"/>
               <div class="form-control"><?php echo $value1->coddivisa;?></div>
            </td>
            <td><input class="form-control" type="text" name="simbolo" value="<?php echo $value1->simbolo;?>" autocomplete="off"/></td>
            <td><input class="form-control" type="text" name="descripcion" value="<?php echo $value1->descripcion;?>" autocomplete="off"/></td>
            <td><input class="form-control" type="text" name="codiso" value="<?php echo $value1->codiso;?>" autocomplete="off"/></td>
            <td><input class="form-control" type="text" name="tasaconv" value="<?php echo $value1->tasaconv;?>" autocomplete="off"/></td>
            <td><input class="form-control" type="text" name="tasaconv_compra" value="<?php echo $value1->tasaconv_compra;?>" autocomplete="off"/></td>
            <td class="text-right">
               <div class="btn-group">
                  <?php if( $fsc->allow_delete ){ ?>

                     <?php if( $value1->coddivisa==$fsc->empresa->coddivisa ){ ?>

                     <a href="#" class="btn btn-sm btn-warning" title="Bloqueado" onclick="alert('No puedes eliminar la divisa predeterminada.')">
                        <span class="glyphicon glyphicon-lock"></span>
                     </a>
                     <?php }else{ ?>

                     <a href="#" class="btn btn-sm btn-danger" title="Eliminar" onclick="eliminar_divisa('<?php echo $value1->coddivisa;?>')">
                        <span class="glyphicon glyphicon-trash"></span>
                     </a>
                     <?php } ?>

                  <?php } ?>

                  <button class="btn btn-sm btn-primary" type="submit" onclick="this.disabled=true;this.form.submit();" title="Guardar">
                     <span class="glyphicon glyphicon-floppy-disk"></span>
                  </button>
               </div>
            </td>
         </tr>
      </form>
      <?php } ?>

      <form action="<?php echo $fsc->url();?>" method="post" class="form">
         <tr class="info">
            <td><input class="form-control" type="text" name="coddivisa" maxlength="3" autocomplete="off" placeholder="Nueva..."/></td>
            <td><input class="form-control" type="text" name="simbolo" autocomplete="off" placeholder="$"/></td>
            <td><input class="form-control" type="text" name="descripcion" autocomplete="off" placeholder="Moneda"/></td>
            <td><input class="form-control" type="text" name="codiso" autocomplete="off"/></td>
            <td><input class="form-control" type="text" name="tasaconv" value="1" autocomplete="off"/></td>
            <td><input class="form-control" type="text" name="tasaconv_compra" value="1" autocomplete="off"/></td>
            <td class="text-right">
               <div class="btn-group">
                  <button class="btn btn-sm btn-primary" type="submit" onclick="this.disabled=true;this.form.submit();" title="Guardar">
                     <span class="glyphicon glyphicon-floppy-disk"></span>
                  </button>
               </div>
            </td>
         </tr>
      </form>
   </table>
</div>

<br/>

<div class="container-fluid">
   <div class="row">
      <div class="col-sm-6">
         <div class="panel panel-default">
            <div class="panel-heading">
               <h3 class="panel-title">Divisa predeterminada</h3>
            </div>
            <div class="panel-body">
               Pusedes seleccionar la divisa predeterminada de FacturaScripts desde Admin &gt; Empresa.
               <br/><br/>
               <a href="index.php?page=admin_empresa#facturacion" class="btn btn-sm btn-default">
                  <span class="glyphicon glyphicon-wrench" aria-hidden="true"></span> &nbsp; Elegir divisa
               </a>
            </div>
         </div>
      </div>
      <div class="col-sm-6">
         <div class="panel panel-default">
            <div class="panel-heading">
               <h3 class="panel-title">Opciones de divisa</h3>
            </div>
            <div class="panel-body">
               Puedes cambiar el número de decimales, el separador, etc... desde el panel de control.
               <br/><br/>
               <a href="index.php?page=admin_home#avanzado" class="btn btn-sm btn-default">
                  <span class="glyphicon glyphicon-wrench" aria-hidden="true"></span> &nbsp; Panel de control
               </a>
            </div>
         </div>
      </div>
   </div>
</div>

<?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("footer") . ( substr("footer",-1,1) != "/" ? "/" : "" ) . basename("footer") );?>
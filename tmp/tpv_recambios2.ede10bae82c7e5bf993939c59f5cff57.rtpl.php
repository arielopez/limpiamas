<?php if(!class_exists('raintpl')){exit;}?><script type="text/javascript" src="<?php echo $fsc->get_js_location('tpv_recambios.js');?>"></script>
<script type="text/javascript">
   fs_nf0 = <?php  echo FS_NF0;?>;
   tpv_url = '<?php echo $fsc->url();?>';
   cliente = <?php echo json_encode($fsc->cliente_s); ?>;
   all_impuestos = <?php echo json_encode($fsc->impuesto->all()); ?>;
   all_series = <?php echo json_encode($fsc->serie->all()); ?>;
   
   $(document).ready(function() {
      usar_serie();
      
      $("#ac_cliente").autocomplete({
         serviceUrl: tpv_url,
         paramName: 'buscar_cliente',
         onSelect: function (suggestion) {
            if(suggestion)
            {
               if(document.f_tpv.cliente.value != suggestion.data && suggestion.data != '')
               {
                  document.f_tpv.cliente.value = suggestion.data;
                  usar_cliente(suggestion.data);
               }
            }
         }
      });
   });
</script>

<div class="container-fluid" style="margin-top: 10px; margin-bottom: 10px;">
   <div class="row">
      <div class="col-xs-6">
         <div class="btn-group hidden-xs">
            <a class="btn btn-sm btn-default" href="<?php echo $fsc->url();?>" title="recargar la página">
               <span class="glyphicon glyphicon-refresh"></span>
            </a>
            <?php if( $fsc->page->show_on_menu ){ ?>

               <?php if( $fsc->page->is_default() ){ ?>

               <a class="btn btn-sm btn-default active" href="<?php echo $fsc->url();?>&amp;default_page=FALSE" title="desmarcar como página de inicio">
                  <span class="glyphicon glyphicon-home"></span>
               </a>
               <?php }else{ ?>

               <a class="btn btn-sm btn-default" href="<?php echo $fsc->url();?>&amp;default_page=TRUE" title="marcar como página de inicio">
                  <span class="glyphicon glyphicon-home"></span>
               </a>
               <?php } ?>

            <?php } ?>

         </div>
         <div class="btn-group">
            <a href="#" id="b_reticket" class="btn btn-sm btn-default">
               <span class="glyphicon glyphicon-print"></span>
               <span class="hidden-xs">&nbsp; Reimprimir ticket</span>
            </a>
         </div>
      </div>
      <div class="col-xs-6 text-right">
         <div class="btn-group">
            <a href="<?php echo $fsc->url();?>&abrir_caja=TRUE" id="b_abrir_caja" class="btn btn-sm btn-default">
               <span class="glyphicon glyphicon-inbox"></span>
               <span class="hidden-xs hidden-sm">&nbsp; Abrir cajón</span>
            </a>
            <a href="#" id="b_cerrar_caja" class="btn btn-sm btn-danger">
               <span class="glyphicon glyphicon-lock"></span> &nbsp; Cerrar caja
            </a>
         </div>
      </div>
   </div>
</div>

<form id="f_tpv" name="f_tpv" action="<?php echo $fsc->url();?>" method="post" class="form">
   <input type="hidden" name="petition_id" value="<?php echo $fsc->random_string();?>"/>
   <input type="hidden" id="numlineas" name="numlineas" value="0"/>
   <input type="hidden" id="tpv_total2" name="tpv_total2" value="0"/>
   <input type="hidden" name="cliente" value="<?php echo $fsc->cliente_s->codcliente;?>"/>
   <input type="hidden" name="regalo" value="FALSE"/>
   <input type="hidden" name="almacen" value="<?php echo $fsc->terminal->codalmacen;?>"/>
   <input type="hidden" name="serie" value="<?php echo $fsc->terminal->codserie;?>"/>
   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-6">
            <div class="form-group">
               Cliente:
               <div class="input-group">
                  <input class="form-control" type="text" name="ac_cliente" id="ac_cliente" value="<?php echo $fsc->cliente_s->nombre;?>" placeholder="Buscar" autocomplete="off"/>
                  <span class="input-group-btn">
                     <button class="btn btn-default" type="button" onclick="document.f_tpv.ac_cliente.value=''; document.f_tpv.ac_cliente.focus();">
                        <span class="glyphicon glyphicon-edit"></span>
                     </button>
                  </span>
               </div>
               <p class="help-block">
                  <a href="<?php echo $fsc->cliente->url();?>#nuevo" target="_blank">Nuevo cliente</a>.
               </p>
            </div>
         </div>
         <div class="col-sm-2">
            <div class="form-group">
               Fecha:
               <input class="form-control datepicker" type="text" name="fecha" value="<?php echo $fsc->today();?>" autocomplete="off"/>
            </div>
         </div>
         <div class="col-sm-4">
            <div class="form-group">
               Atiende:
               <div class="form-control">
                  <a href="<?php echo $fsc->agente->url();?>"><?php echo $fsc->agente->get_fullname();?></a>
               </div>
            </div>
         </div>
      </div>
   </div>
   
   <ul class="nav nav-tabs" role="tablist">
      <li class="active">
         <a href="#tab_lineas" role="tab" data-toggle="tab">
            <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
            <span class="hidden-xs">&nbsp; Carrito</span>
         </a>
      </li>
   </ul>
   
   <div class="tab-content">
      <div class="tab-pane active" id="tab_lineas">
         <div class="table-responsive">
            <table class="table table-condensed">
               <thead>
                  <tr>
                     <th class="text-left" width="180">Referencia</th>
                     <th class="text-left">Descripción</th>
                     <th class="text-right" width="90">Cantidad</th>
                     <th width="60"></th>
                     <th class="text-right" width="110">Precio</th>
                     <th class="text-right" width="90">Dto. %</th>
                     <th class="text-right" width="130">Neto</th>
                     <th class="text-right" width="115"><?php  echo FS_IVA;?></th>
                     <th class="text-right recargo" width="115">RE %</th>
                     <th class="text-right irpf" width="115"><?php  echo FS_IRPF;?> %</th>
                     <th class="text-right" width="140">Total</th>
                  </tr>
               </thead>
               <tbody id="lineas_albaran">
                  <tr class="info">
                     <td><input id="i_new_line" class="form-control" type="text" placeholder="Buscar para añadir..." autocomplete="off"/></td>
                     <td colspan="3"></td>
                     <td colspan="2">
                        <div class="form-control text-right">Totales</div>
                     </td>
                     <td><div id="aneto" class="form-control text-right" style="font-weight: bold;"><?php echo $fsc->show_numero(0);?></div></td>
                     <td><div id="aiva" class="form-control text-right" style="font-weight: bold;"><?php echo $fsc->show_numero(0);?></div></td>
                     <td class="recargo">
                        <div id="are" class="form-control text-right" style="font-weight: bold;"><?php echo $fsc->show_numero(0);?></div>
                     </td>
                     <td class="irpf">
                        <div id="airpf" class="form-control text-right" style="font-weight: bold;"><?php echo $fsc->show_numero(0);?></div>
                     </td>
                     <td><div id="atotal" class="form-control text-right" style="font-weight: bold;"><?php echo $fsc->show_numero(0);?></div></td>
                  </tr>
               </tbody>
            </table>
         </div>
      </div>
   </div>
   
   <div class="container-fluid">
      <div class="row" style="margin-bottom: 30px;">
         <div class="col-xs-6">
            <button class="btn btn-sm btn-default" type="button" onclick="window.location.href='<?php echo $fsc->url();?>';">
               <span class="glyphicon glyphicon-refresh"></span> &nbsp; Reiniciar...
            </button>
         </div>
         <div class="col-xs-6 text-right">
            <button type="button" id="b_tpv_guardar" class="btn btn-sm btn-primary">
               <span class="glyphicon glyphicon-floppy-disk"></span> &nbsp; Guardar...
            </button>
         </div>
      </div>
   </div>
   
   <div class="modal" id="modal_guardar" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
               <h4 class="modal-title">Guardar ticket</h4>
               <p class="help-block">
                  <b>Recuerda</b> que para poder imprimir tickets necesitas estar ejecutando la aplicación
                  <a target="_blank" href="https://www.facturascripts.com/comm3/index.php?page=community_item&id=170">Remote printer</a>.
               </p>
            </div>
            <ul class="nav nav-tabs" role="tablist">
               <li role="presentation" class="active">
                  <a href="#pago" aria-controls="pago" role="tab" data-toggle="tab">
                     <span class="glyphicon glyphicon-usd"></span>
                     <span class="hidden-xs">&nbsp; Pago</span>
                  </a>
               </li>
               <li role="presentation">
                  <a href="#opciones" aria-controls="opciones" role="tab" data-toggle="tab">
                     <span class="glyphicon glyphicon-cog"></span>
                     <span class="hidden-xs">&nbsp; Opciones</span>
                  </a>
               </li>
            </ul>
            <div class="modal-body">
               <div class="tab-content">
                  <div role="tabpanel" class="tab-pane active" id="pago">
                     <div class="form-group">
                        <div class="input-group">
                           <span class="input-group-addon">Total</span>
                           <input type="text" name="tpv_total" id="tpv_total" class="form-control" disabled="disabled"/>
                        </div>
                     </div>
                     <div class="form-group">
                        <div class="input-group">
                           <span class="input-group-addon">Efectivo</span>
                           <input type="text" name="tpv_efectivo" id="tpv_efectivo" class="form-control" autocomplete="off"/>
                        </div>
                     </div>
                     <div class="form-group">
                        <div class="input-group">
                           <span class="input-group-addon">Cambio</span>
                           <input type="text" name="tpv_cambio" id="tpv_cambio" class="form-control" disabled="disabled"/>
                        </div>
                     </div>
                     <div class="form-group">
                        <a href="<?php echo $fsc->forma_pago->url();?>">Forma de pago</a>:
                        <select name="forma_pago" class="form-control">
                        <?php $loop_var1=$fsc->forma_pago->all(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

                           <?php if( $value1->is_default() ){ ?>

                           <option value="<?php echo $value1->codpago;?>" selected=""><?php echo $value1->descripcion;?></option>
                           <?php }else{ ?>

                           <option value="<?php echo $value1->codpago;?>"><?php echo $value1->descripcion;?></option>
                           <?php } ?>

                        <?php } ?>

                        </select>
                     </div>
                  </div>
                  <div role="tabpanel" class="tab-pane" id="opciones">
                     <div class="form-group">
                        <input class="form-control" type="text" name="numero2" placeholder="<?php  echo FS_NUMERO2;?>" autocomplete="off"/>
                     </div>
                     <div class="form-group">
                        <a href="<?php echo $fsc->divisa->url();?>">Divisa</a>:
                        <select name="divisa" class="form-control">
                        <?php $loop_var1=$fsc->divisa->all(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

                           <?php if( $value1->is_default() ){ ?>

                           <option value="<?php echo $value1->coddivisa;?>" selected=""><?php echo $value1->descripcion;?></option>
                           <?php }else{ ?>

                           <option value="<?php echo $value1->coddivisa;?>"><?php echo $value1->descripcion;?></option>
                           <?php } ?>

                        <?php } ?>

                        </select>
                     </div>
                     <div class="form-group">
                        Tasa de conversión a Grs.
                        <input type="text" name="tasaconv" class="form-control" placeholder="(predeterminada)" autocomplete="off"/>
                     </div>
                     <div class="form-group">
                        Nº de tickets:
                        <input class="form-control" type="number" name="num_tickets" value="<?php echo $fsc->terminal->num_tickets;?>"/>
                     </div>
                     <div class="checkbox">
                        <label>
                           <input type="checkbox" name="imprimir_desc" value="TRUE"<?php if( $fsc->imprimir_descripciones ){ ?> checked="checked"<?php } ?>/>
                           Imprimir descripciones
                        </label>
                     </div>
                     <div class="checkbox">
                        <label>
                           <input type="checkbox" name="imprimir_obs" value="TRUE"<?php if( $fsc->imprimir_observaciones ){ ?> checked="checked"<?php } ?>/>
                           Imprimir observaciones
                        </label>
                     </div>
                     <div class="form-group">
                        <textarea class="form-control" name="observaciones" placeholder="Observaciones"></textarea>
                     </div>
                  </div>
               </div>
            </div>
            <div class="modal-footer">
               <div class="btn-group">
                  <button class="btn btn-sm btn-primary" type="button" onclick="this.disabled=true;$('#tpv_total').prop('disabled',false);this.form.submit();">
                     <span class="glyphicon glyphicon-floppy-disk"></span> &nbsp; Guardar e imprimir
                  </button>
                  <button class="btn btn-sm btn-info" type="button" onclick="this.disabled=true;$('#tpv_total').prop('disabled',false);document.f_tpv.regalo.value='TRUE';this.form.submit();" title="Imprimir ticket para regalo (sin precios)">
                     <span class="glyphicon glyphicon-gift"></span>
                  </button>
               </div>
            </div>
         </div>
      </div>
   </div>
</form>

<div class="modal" id="modal_articulos">
   <div class="modal-dialog" style="width: 99%; max-width: 950px;">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Buscar artículos</h4>
         </div>
         <div class="modal-body">
            <form id="f_buscar_articulos" name="f_buscar_articulos" action="<?php echo $fsc->url();?>" method="post" class="form">
               <input type="hidden" name="codcliente"/>
               <input type="hidden" name="codalmacen" value="<?php echo $fsc->terminal->codalmacen;?>"/>
               <div class="container-fluid">
                  <div class="row">
                     <div class="col-sm-4">
                        <div class="input-group">
                           <input class="form-control" type="text" name="query" autocomplete="off"/>
                           <span class="input-group-btn">
                              <button class="btn btn-primary" type="submit">
                                 <span class="glyphicon glyphicon-search"></span>
                              </button>
                           </span>
                        </div>
                        <label>
                           <input type="checkbox" name="con_stock" value="TRUE" onchange="buscar_articulos()"/>
                           sólo con stock
                        </label>
                     </div>
                     <div class="col-sm-4">
                        <select class="form-control" name="codfamilia" onchange="buscar_articulos()">
                           <option value="">Cualquier familia</option>
                           <option value="">------</option>
                           <?php $loop_var1=$fsc->familia->all(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

                           <option value="<?php echo $value1->codfamilia;?>"><?php echo $value1->nivel;?><?php echo $value1->descripcion;?></option>
                           <?php } ?>

                        </select>
                     </div>
                     <div class="col-sm-4">
                        <select class="form-control" name="codfabricante" onchange="buscar_articulos()">
                           <option value="">Cualquier fabricante</option>
                           <option value="">------</option>
                           <?php $loop_var1=$fsc->fabricante->all(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

                           <option value="<?php echo $value1->codfabricante;?>"><?php echo $value1->nombre;?></option>
                           <?php } ?>

                        </select>
                     </div>
                  </div>
               </div>
            </form>
         </div>
         <div id="search_results"></div>
      </div>
   </div>
</div>
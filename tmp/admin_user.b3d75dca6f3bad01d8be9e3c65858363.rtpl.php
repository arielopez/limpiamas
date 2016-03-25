<?php if(!class_exists('raintpl')){exit;}?><?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("header") . ( substr("header",-1,1) != "/" ? "/" : "" ) . basename("header") );?>


<?php if( $fsc->suser ){ ?>

<script type="text/javascript">
   function fs_marcar_todo()
   {
      $("#f_user_pages input[name='enabled[]']").prop('checked', true);
      $("#f_user_pages input[name='allow_delete[]']").prop('checked', true);
   }
   function fs_marcar_nada()
   {
      $("#f_user_pages input[name='enabled[]']").prop('checked', false);
      $("#f_user_pages input[name='allow_delete[]']").prop('checked', false);
   }
   function check_allow_delete(counter)
   {
      if( $("#enabled_"+counter).is(':checked') )
      {
         $("#allow_delete_"+counter).prop('checked', true);
      }
      else
      {
         $("#allow_delete_"+counter).prop('checked', false);
      }
   }
   $(document).ready(function() {
      $("#b_eliminar_usuario").click(function(event) {
         event.preventDefault();
         if( confirm("¿Realmente desea eliminar el usuario?") )
            window.location.href = 'index.php?page=admin_users&delete=<?php echo $fsc->suser->nick;?>';
      });
      $("#b_nuevo_agente").click(function(event) {
         event.preventDefault();
         $("#modal_nuevo_agente").modal('show');
         document.f_nuevo_agente.nnombre.focus();
      });
   });
</script>

<form class="form" role="form" id="f_user_pages" action="<?php echo $fsc->url();?>" method="post">
   <input type="hidden" name="modupages" value="TRUE"/>
   <div class="container-fluid">
      <div class="row" style="margin-top: 10px; margin-bottom: 10px;">
         <div class="col-sm-8">
            <a class="btn btn-sm btn-default" href="<?php echo $fsc->url();?>" title="recargar la página">
               <span class="glyphicon glyphicon-refresh"></span>
            </a>
            <a class="btn btn-sm btn-default" href="index.php?page=admin_users">
               <span class="glyphicon glyphicon-arrow-left"></span> &nbsp; Usuarios
            </a>
            
            <div class="btn-group">
            <?php $loop_var1=$fsc->extensions; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

               <?php if( $value1->type=='button' ){ ?>

               <a href="index.php?page=<?php echo $value1->from;?>&snick=<?php echo $fsc->suser->nick;?><?php echo $value1->params;?>" class="btn btn-sm btn-default"><?php echo $value1->text;?></a>
               <?php } ?>

            <?php } ?>

            </div>
         </div>
         <div class="col-sm-4 text-right">
            <div class="btn-group">
               <?php if( $fsc->user->nick != $fsc->suser->nick AND $fsc->allow_delete ){ ?>

               <a href="#" id="b_eliminar_usuario" class="btn btn-sm btn-danger">
                  <span class="glyphicon glyphicon-trash"></span> &nbsp; Eliminar
               </a>
               <?php } ?>

               <button class="btn btn-sm btn-primary" type="submit" onclick="this.disabled=true;this.form.submit();">
                  <span class="glyphicon glyphicon-floppy-disk"></span> &nbsp; Guardar
               </button>
            </div>
         </div>
      </div>
      <div class="row">
         <div class="col-sm-2">
            <div class="form-group">
               Nick:
               <input class="form-control" type="text" name="snick" value="<?php echo $fsc->suser->nick;?>" disabled="disabled"/>
               <div class="checkbox">
                  <label>
                     <input type="checkbox" name="sadmin" value="TRUE"<?php if( $fsc->suser->admin ){ ?> checked="checked"<?php } ?>/>
                     Administrador
                  </label>
               </div>
            </div>
         </div>
         <div class="col-sm-2">
            <div class="form-group">
               Contraseña:
               <input class="form-control" type="password" name="spassword" maxlength="12" placeholder="nueva contraseña"/>
               <input class="form-control" type="password" name="spassword2" maxlength="12" placeholder="repite la contraseña"/>
            </div>
         </div>
         <div class="col-sm-2">
            <div class="form-group">
               Email:
               <input type="text" name="email" value="<?php echo $fsc->suser->email;?>" class="form-control" autocomplete="off"/>
            </div>
         </div>
         <div class="col-sm-2">
            <div class="form-group">
               <a href="<?php echo $fsc->agente->url();?>">Empleado</a>:
               <select name="scodagente" class="form-control">
                  <option value="">Ninguno</option>
                  <option value="">------</option>
                  <?php $loop_var1=$fsc->agente->all(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

                     <?php if( $fsc->suser->codagente==$value1->codagente ){ ?>

                     <option value="<?php echo $value1->codagente;?>" selected=""><?php echo $value1->get_fullname();?></option>
                     <?php }else{ ?>

                     <option value="<?php echo $value1->codagente;?>"><?php echo $value1->get_fullname();?></option>
                     <?php } ?>

                  <?php } ?>

               </select>
               <p class="help-block">
                  <a id="b_nuevo_agente" href="#">Crear un nuevo empleado y asignarlo a este usuario</a>
               </p>
            </div>
         </div>
         <div class="col-sm-2">
            <div class="form-group">
               Página de inicio:
               <select name="udpage" class="form-control">
               <?php $loop_var1=$fsc->suser->get_menu(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

                  <?php if( $value1->show_on_menu ){ ?>

                     <?php if( $value1->name==$fsc->suser->fs_page ){ ?>

                     <option value="<?php echo $value1->name;?>" selected=""><?php echo $value1->folder;?> - <?php echo $value1->title;?></option>
                     <?php }else{ ?>

                     <option value="<?php echo $value1->name;?>"><?php echo $value1->folder;?> - <?php echo $value1->title;?></option>
                     <?php } ?>

                  <?php } ?>

               <?php } ?>

               </select>
            </div>
         </div>
         <div class="col-sm-2">
            <div class="form-group">
               Plantilla CSS:
               <select name="css" class="form-control">
                  <?php $loop_var1=$fsc->extensions; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

                     <?php if( $value1->type=='css' ){ ?>

                     <option value="<?php echo $value1->text;?>"<?php if( $value1->text==$fsc->suser->css ){ ?> selected=""<?php } ?>><?php echo $value1->name;?></option>
                     <?php } ?>

                  <?php }else{ ?>

                  <option value="view/css/bootstrap-yeti.min.css">yeti</option>
                  <?php } ?>

               </select>
            </div>
         </div>
      </div>
   </div>
   
   <div role="tabpanel">
      <ul class="nav nav-tabs" role="tablist">
         <li role="presentation" class="active">
            <a href="#home" aria-controls="home" role="tab" data-toggle="tab">
               <span class="glyphicon glyphicon-check"></span>
               <span class="hidden-xs">&nbsp; Autorizar</span>
            </a>
         </li>
         <li role="presentation">
            <a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">
               <span class="glyphicon glyphicon-book"></span>
               <span class="hidden-xs">&nbsp; Historial</span>
            </a>
         </li>
         <?php $loop_var1=$fsc->extensions; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

            <?php if( $value1->type=='tab' ){ ?>

            <li role="presentation">
               <a href="#ext_<?php echo $value1->name;?>" aria-controls="ext_<?php echo $value1->name;?>" role="tab" data-toggle="tab"><?php echo $value1->text;?></a>
            </li>
            <?php } ?>

         <?php } ?>

      </ul>
      <div class="tab-content">
         <div role="tabpanel" class="tab-pane active" id="home">
            <div class="table-responsive">
               <table class="table table-hover">
                  <thead>
                     <tr>
                        <th width="100">Autorizado</th>
                        <th class="text-left">Página</th>
                        <th class="text-left">Menú</th>
                        <th class="text-center">Permiso de eliminación</th>
                     </tr>
                  </thead>
                  <?php if( !$fsc->suser->admin ){ ?>

                     <?php $loop_var1=$fsc->all_pages(); $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

                     <tr<?php if( $value1->enabled ){ ?> class="<?php if( $value1->allow_delete ){ ?>bg-success<?php }else{ ?>bg-warning<?php } ?>"<?php } ?>>
                        <td class="text-center">
                           <input type="checkbox" id="enabled_<?php echo $counter1;?>" name="enabled[]" value="<?php echo $value1->name;?>" onclick="check_allow_delete('<?php echo $counter1;?>')"<?php if( $value1->enabled ){ ?> checked="checked"<?php } ?>/>
                        </td>
                        <td><?php echo $value1->name;?></td>
                        <td><?php echo $value1->folder;?> » <?php echo $value1->title;?></td>
                        <td class="text-center">
                           <input type="checkbox" id="allow_delete_<?php echo $counter1;?>" name="allow_delete[]" value="<?php echo $value1->name;?>"<?php if( $value1->allow_delete ){ ?> checked="checked"<?php } ?> title="el usuario tiene permisos para eliminar en esta página"/>
                        </td>
                     </tr>
                     <?php } ?>

                  <?php }else{ ?>

                  <tr class="success">
                     <td colspan="4">
                        Los administradores tienen acceso a cualquier página.
                     </td>
                  </tr>
                  <?php } ?>

               </table>
            </div>
            <?php if( !$fsc->suser->admin ){ ?>

            <div class="container-fluid">
               <div class="row">
                  <div class="col-lg-6 col-md-6 col-sm-6">
                     <div class="btn-group">
                        <button class="btn btn-sm btn-default" type="button" onclick="fs_marcar_todo()" title="Marcar todo">
                           <span class="glyphicon glyphicon-check"></span>
                        </button>
                        <button class="btn btn-sm btn-default" type="button" onclick="fs_marcar_nada()" title="Desmarcar todo">
                           <span class="glyphicon glyphicon-unchecked"></span>
                        </button>
                     </div>
                  </div>
                  <div class="col-lg-6 col-md-6 col-sm-6 text-right">
                     <button class="btn btn-sm btn-primary" type="submit" onclick="this.disabled=true;this.form.submit();">
                        <span class="glyphicon glyphicon-floppy-disk"></span> &nbsp; Guardar
                     </button>
                  </div>
               </div>
            </div>
            <?php } ?>

         </div>
         <div role="tabpanel" class="tab-pane" id="profile">
            <div class="table-responsive">
               <table class="table table-hover">
                  <thead>
                     <tr>
                        <th class="text-left">Último login</th>
                        <th class="text-left">IP</th>
                        <th class="text-left">Navegador</th>
                     </tr>
                  </thead>
                  <tr>
                     <td><?php echo $fsc->suser->show_last_login();?></td>
                     <td><?php echo $fsc->suser->last_ip;?></td>
                     <td><?php echo $fsc->suser->last_browser;?></td>
                  </tr>
               </table>
            </div>
            <h2 style="padding-left: 10px;">Anterior:</h2>
            <div class="table-responsive">
               <table class="table table-hover">
                  <thead>
                     <tr>
                        <th class="text-left">Tipo</th>
                        <th class="text-left">Detalle</th>
                        <th class="text-left">IP</th>
                        <th class="text-right">Fecha</th>
                     </tr>
                  </thead>
                  <?php $loop_var1=$fsc->user_log; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

                  <tr<?php if( $value1->alerta ){ ?> class="bg-danger"<?php } ?>>
                     <td><?php echo $value1->tipo;?></td>
                     <td><?php echo $value1->detalle;?></td>
                     <td><?php echo $value1->ip;?></td>
                     <td class="text-right"><?php echo $value1->fecha;?></td>
                  </tr>
                  <?php }else{ ?>

                  <tr class="bg-warning">
                     <td colspan="4">Sin resultados.</td>
                  </tr>
                  <?php } ?>

               </table>
            </div>
         </div>
         <?php $loop_var1=$fsc->extensions; $counter1=-1; if($loop_var1) foreach( $loop_var1 as $key1 => $value1 ){ $counter1++; ?>

            <?php if( $value1->type=='tab' ){ ?>

            <div role="tabpanel" class="tab-pane" id="ext_<?php echo $value1->name;?>">
               <iframe src="index.php?page=<?php echo $value1->from;?><?php echo $value1->params;?>&snick=<?php echo $fsc->suser->nick;?>" width="100%" height="600" frameborder="0"></iframe>
            </div>
            <?php } ?>

         <?php } ?>

      </div>
   </div>
</form>

<form class="form-horizontal" role="form" name="f_nuevo_agente" action="<?php echo $fsc->url();?>" method="post">
   <div class="modal" id="modal_nuevo_agente">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
               <h4 class="modal-title">Nuevo empleado</h4>
            </div>
            <div class="modal-body">
               <div class="form-group">
                  <label for="nnombre" class="col-lg-2 col-md-2 col-sm-2 control-label">Nombre</label>
                  <div class="col-lg-10 col-md-10 col-sm-10">
                     <input class="form-control" type="text" name="nnombre" autocomplete="off"/>
                  </div>
               </div>
               <div class="form-group">
                  <label for="napellidos" class="col-lg-2 col-md-2 col-sm-2 control-label">Apellidos</label>
                  <div class="col-lg-10 col-md-10 col-sm-10">
                     <input class="form-control" type="text" name="napellidos" autocomplete="off"/>
                  </div>
               </div>
               <div class="form-group">
                  <label for="ndnicif" class="col-lg-2 col-md-2 col-sm-2 control-label"><?php  echo FS_CIFNIF;?></label>
                  <div class="col-lg-10 col-md-10 col-sm-10">
                     <input class="form-control" type="text" name="ndnicif" autocomplete="off"/>
                  </div>
               </div>
               <div class="form-group">
                  <label for="ntelefono" class="col-lg-2 col-md-2 col-sm-2 control-label">Teléfono</label>
                  <div class="col-lg-10 col-md-10 col-sm-10">
                     <input class="form-control" type="text" name="ntelefono" autocomplete="off"/>
                  </div>
               </div>
               <div class="form-group">
                  <label for="nemail" class="col-lg-2 col-md-2 col-sm-2 control-label">Email</label>
                  <div class="col-lg-10 col-md-10 col-sm-10">
                     <input class="form-control" type="text" name="nemail" autocomplete="off"/>
                  </div>
               </div>
            </div>
            <div class="modal-footer">
               <button class="btn btn-sm btn-primary" type="submit" onclick="this.disabled=true;this.form.submit();">
                  <span class="glyphicon glyphicon-floppy-disk"></span> &nbsp; Guardar
               </button>
            </div>
         </div>
      </div>
   </div>
</form>
<?php }else{ ?>

<div class="thumbnail">
   <img src="view/img/fuuu_face.png" alt="fuuuuu"/>
</div>
<?php } ?>


<?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("footer") . ( substr("footer",-1,1) != "/" ? "/" : "" ) . basename("footer") );?>
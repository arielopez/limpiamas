<?php if(!class_exists('raintpl')){exit;}?><?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("header") . ( substr("header",-1,1) != "/" ? "/" : "" ) . basename("header") );?>


<div class="container">
   <div class="row">
      <div class="col-sm-12">
         <div class="page-header">
            <h1>Acceso denegado</h1>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-sm-8">
         <ul>
            <li>No tienes permiso para acceder a esta página - o la misma esta en desarrollo</li>
            <li>Consulta con el administrador <u>para que te dé acceso</u> a esta página.</li>
            <li>
               Si crees que es un error del sistema , no dudes en notificár.

            </li>
         </ul>
      </div>
      <div class="col-sm-4">
         <div class="thumbnail">
            <img src='view/img/big_lock.png' alt="Acceso denegado"/>
         </div>
      </div>
   </div>
</div>

<?php $tpl = new RainTPL;$tpl_dir_temp = self::$tpl_dir;$tpl->assign( $this->var );$tpl->draw( dirname("footer") . ( substr("footer",-1,1) != "/" ? "/" : "" ) . basename("footer") );?>
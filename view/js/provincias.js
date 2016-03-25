/*  
 * @author Carlos García Gómez      neorazorx@gmail.com
 * @copyright 2015, Carlos García Gómez. All Rights Reserved. 
 */ 

var provincia_list = [
    {value: 'ITAPUA'},
    {value: 'CENTRAL'},
    {value: 'CONCEPCIÓN'},
    {value: 'CORDILLERA'},
    {value: 'GUAIRÁ'},
    {value: 'MISIONES'},
    {value: 'ÑEEMBUCÚ'},
    {value: 'PARAGUARÍ'},
    {value: 'PRESIDENTE HAYES'},
    {value: 'SAN PEDRO'},
    {value: 'ALTO PARAGUAY'},
    {value: 'ALTO PARANÁ'},
    {value: 'AMAMBAY'},
    {value: 'BOQUERÓN'},
    {value: 'CAAGUAZÚ'},
    {value: 'CAAZAPÁ'},
    {value: 'CANINDEYÚ'}
];

//var ciudad_list=[
//   {value: 'ASUNCION'},
//   {value: 'LUQUE'},
//   {value: 'SAN LORENZO'},
//   {value: 'ENCARNACION'}
//];
var f= new Array();
f['ITAPUA']=['ENCARNACIÓN','CAMBYRETÁ','SAN PEDRO DEL PARANÁ','TOMÁS ROMERO PEREIRA','EDELIRA','SAN RAFAEL DEL PARANÁ',
    'NATALIO','CORONEL JOSÉ FÉLIX BOGADO','CARLOS ANTONIO LÓPEZ','ALTO VERÁ','ITAPÚA POTY','OBLIGADO',
    'MAYOR JULIO DIONISIO OTAÑO','HOHENAU','CAPITÁN MEZA','BELLA VISTA','YATYTAY','CAPITÁN MIRANDA','GENERAL ARTIGAS',
    'FRAM','SAN COSME Y DAMIÁN','SAN JUAN DEL PARANÁ','TRINIDAD','PIRAPÓ','CARMEN DEL PARANÁ','GENERAL DELGADO',
    'NUEVA ALBORADA','JESÚS','JOSÉ LEANDRO OVIEDO','LA PAZ'];
f['CENTRAL']=['ASUNCIÓN','LUQUE','SAN LORENZO','CAPIATÁ','LAMBARÉ','FERNANDO DE LA MORA','LIMPIO','ÑEMBY',
    'ITAUGUÁ','MARIANO ROQUE ALONSO','VILLA ELISA','ITÁ','AREGUÁ','SAN ANTONIO','JULIÁN AUGUSTO SALDÍVAR','YPANÉ',
    'VILLETA','GUARAMBARÉ','YPACARAÍ','NUEVA ITALIA'];
f['SAN PEDRO']=['AQUINO','LIBERACIÓN','TACUATÍ','YRYBUCUÁ','YATAITY DEL NORTE','LIMA','ITACURUBÍ DEL ROSARIO',
    'VILLA DEL ROSARIO','25 DE DICIEMBRE','UNIÓN','NUEVA GERMANIA','ANTEQUERA','SAN PABLO'];
//var ciudad_list=[]

$(document).ready(function() {
   $("#ac_provincia, #ac_provincia2").autocomplete({
      lookup: provincia_list,
   });


    //alert(dpto);
    $("#ciudad, #ciudad2").focus(function(){
        var dpto=$("#ac_provincia").val();
        if (dpto==null||dpto==""){
            dpto=$("#ac_provincia2").val();

        }
        $("#ciudad, #ciudad2").autocomplete({
            lookup: f[dpto],
        });


    });

});

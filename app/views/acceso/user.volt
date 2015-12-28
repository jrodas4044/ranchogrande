<div class="text-align: center;">
<h2>{{ usuario.nombre }}</h2>
 <b>DPI:</b> {{ usuario.dpi  }} | <b>Empresa:</b> {{ usuario.condominio.nombre  }}
<p>
<b>Placa Vehiculo:</b> {{ usuario.vehiculo.placa }}
</p>
<b/>Del: </b>  {{  desde }} <b>Al: </b> {{ hasta }}
<hr/>
</div>
{{ time_desde }}
<table class="browse table table-striped" >
    <thead>
        <tr>
            <th>Datos de Acceso</th>
         </tr>
    </thead>
    <tbody>
  	
     {% for acceso in users %}
	 <tr>
             <td>
                {% if  acceso.tipo == 1 %}
                   <span class="alert-success" > Entrada:  {{ acceso.time }} </span>
                {% else %}
                  <span class="alert-warning">  Salida:  {{ acceso.time }} </span>
                {% endif %}
            </td>
        </tr>
       {% endfor %}

     </tbody>
    <tbody>
    </tbody>
</table>
<script>
    $('.side-nav').hide();
    $('#wrapper').css('padding-left','0px');
</script>

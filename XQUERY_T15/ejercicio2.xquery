declare variable $ganar := "pngtree-creative-three-dimensional-metal-win-png-image_387725.jpg";
<html>
  <head>
    <title> Ejercicio 1 XQUERY T15 </title>
  </head>
  <body>
    <h1 style="text-align:center"> Jornada 38 </h1>
    <table style="border: solid black 3px; text-align: center">
        <tr style="border: solid black 3px; text-align: center">
          <th style="border: solid black 3px; text-align: center"> Equipo Local </th>
          <th style="border: solid black 3px; text-align: center"> Resultado </th>
          <th style="border: solid black 3px; text-align: center"> Equipo Visitante </th>
          <th style="border: solid black 3px; text-align: center"> 1 </th>
          <th style="border: solid black 3px; text-align: center"> X </th>
          <th style="border: solid black 3px; text-align: center"> 2 </th>
        </tr>
    {
        for $match in //evento
        return
        
        <tr style="border: solid black 3px; text-align: center">
        <td style="border: solid black 3px; text-align: center"> { $match/equipolocal/text() } </td>
        <td style="border: solid black 3px; text-align: center"> { $match/resultadolocal/text() } - { $match/resultadovisitante/text() } </td>
        <td style="border: solid black 3px; text-align: center"> { $match/equipovisitante/text() } </td>
        <td style="border: solid black 3px; text-align: center; background-color: {if ($match/resultadolocal/text() > $match/resultadovisitante/text() ) then "gray" else "white"}"> </td>
        <td style="border: solid black 3px; text-align: center; background-color: {if ($match/resultadolocal/text() = $match/resultadovisitante/text() ) then "gray" else "white"}"> </td> 
        <td style="border: solid black 3px; text-align: center; background-color: {if ($match/resultadolocal/text() < $match/resultadovisitante/text() ) then "gray" else "white"}"> </td>
        </tr>
    }
    </table>
  </body>
</html>